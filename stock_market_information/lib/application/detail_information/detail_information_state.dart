part of 'detail_information_bloc.dart';

@freezed
class DetailInformationState with _$DetailInformationState {
  const factory DetailInformationState.initial() = _Initial;
  const factory DetailInformationState.loading() = _Loading;
  const factory DetailInformationState.success({
    required List<DetailInformation> data,
    required String key,
  }) = _Success;
  const factory DetailInformationState.failure() = _Failure;
}
