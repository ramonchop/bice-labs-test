import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_information.freezed.dart';

@freezed
class DetailInformation with _$DetailInformation {
  const factory DetailInformation({
    required DateTime date,
    required double value,
  }) = _DetailInformation;
}
