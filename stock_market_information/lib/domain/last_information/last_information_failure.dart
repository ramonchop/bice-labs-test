import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_information_failure.freezed.dart';

@freezed
class LastInformationFailure with _$LastInformationFailure {
  const factory LastInformationFailure.noDataFound() = NoDataFound;
  const factory LastInformationFailure.connectionTimeout() = ConnectionTimeout;
  const factory LastInformationFailure.serverFailure() = ServerFailure;
}
