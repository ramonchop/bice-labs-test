import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market_information/domain/detail_information/i_detail_information.dart';
import 'package:stock_market_information/domain/detail_information/detail_information_failure.dart';
import 'package:stock_market_information/domain/detail_information/detail_information.dart';
import 'package:stock_market_information/infrastructure/detail_information/detail_information_dto.dart';

@LazySingleton(as: IDetailInformation)
class DetailInformationRepository implements IDetailInformation {
  DetailInformationRepository({
    required Dio client,
    @Named('baseUrl') required String url,
  })  : _client = client,
        _url = url;
  final Dio _client;
  final String _url;

  @override
  Future<Either<DetailInformationFailure, List<DetailInformation>>> getDetails({
    required String key,
  }) async {
    try {
      final url = '$_url/values/$key';
      final response = await _client.get(url);
      if (response.statusCode == 404 || response.data == null) {
        return left(const DetailInformationFailure.noDataFound());
      }
      final list = response.data as List;
      if (list.isEmpty) {
        return left(const DetailInformationFailure.noDataFound());
      }
      return right(
        list.map((e) => DetailInformationDto.fromJson(e).toDomain()).toList(),
      );

      // return right(
      //   list.map((e) => DetailInformationDto.fromJson(e).toDomain()).toList(),
      // );
    } catch (e) {
      return left(const DetailInformationFailure.serverFailure());
    }
  }
}
