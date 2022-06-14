import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stock_market_information/domain/last_information/i_last_information.dart';
import 'package:stock_market_information/domain/last_information/last_information_failure.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';
import 'package:stock_market_information/infrastructure/last_information/last_information_dto.dart';

@LazySingleton(as: ILastInformation)
class LastInformationRepository implements ILastInformation {
  LastInformationRepository({
    required Dio client,
    @Named('baseUrl') required String url,
  })  : _client = client,
        _url = url;
  final Dio _client;
  final String _url;

  @override
  Future<Either<LastInformationFailure, List<LastInformation>>> fetch() async {
    try {
      final response = await _client.get(_url);
      if (response.statusCode == 404 || response.data == null) {
        return left(const LastInformationFailure.noDataFound());
      }
      final data = response.data;
      final list = data as List;
      if (list.isEmpty) return left(const LastInformationFailure.noDataFound());

      return right(
        list.map((e) => LastInformationDto.fromJson(e).toDomain()).toList(),
      );
    } catch (e) {
      return left(const LastInformationFailure.serverFailure());
    }
  }
}
