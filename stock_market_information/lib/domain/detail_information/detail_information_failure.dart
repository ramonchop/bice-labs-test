import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_information_failure.freezed.dart';

@freezed
class DetailInformationFailure with _$DetailInformationFailure {
  const factory DetailInformationFailure.noDataFound() = NoDataFound;
  const factory DetailInformationFailure.connectionTimeout() =
      ConnectionTimeout;
  const factory DetailInformationFailure.serverFailure() = ServerFailure;
}
