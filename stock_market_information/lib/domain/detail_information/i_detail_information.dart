import 'package:dartz/dartz.dart';
import 'package:stock_market_information/domain/detail_information/detail_information_failure.dart';
import 'package:stock_market_information/domain/detail_information/detail_information.dart';

abstract class IDetailInformation {
  Future<Either<DetailInformationFailure, List<DetailInformation>>> getDetails({
    required String key,
  });
}
