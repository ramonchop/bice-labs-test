import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market_information/domain/detail_information/detail_information.dart';

part 'detail_information_dto.g.dart';
part 'detail_information_dto.freezed.dart';

@freezed
class DetailInformationDto with _$DetailInformationDto {
  const DetailInformationDto._();

  const factory DetailInformationDto({
    required int date,
    required double value,
  }) = _DetailInformationDto;

  factory DetailInformationDto.fromJson(Map<String, dynamic> json) =>
      _$DetailInformationDtoFromJson(json);

  DetailInformation toDomain() => DetailInformation(
        date: DateTime.fromMillisecondsSinceEpoch(date * 1000),
        value: value,
      );
}
