part of 'last_information_bloc.dart';

@freezed
class LastInformationState with _$LastInformationState {
  const factory LastInformationState.initial() = _Initial;
  const factory LastInformationState.loading() = _Loading;
  const factory LastInformationState.success({
    required List<LastInformation> data,
  }) = _Success;
  const factory LastInformationState.failure() = _Failure;
}
