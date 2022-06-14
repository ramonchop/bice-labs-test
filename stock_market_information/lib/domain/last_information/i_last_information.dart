import 'package:dartz/dartz.dart';
import 'package:stock_market_information/domain/last_information/last_information_failure.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';

abstract class ILastInformation {
  Future<Either<LastInformationFailure, List<LastInformation>>> fetch();
}
