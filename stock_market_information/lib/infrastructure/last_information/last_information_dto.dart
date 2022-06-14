import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_market_information/domain/last_information/last_information.dart';

part 'last_information_dto.g.dart';
part 'last_information_dto.freezed.dart';

@freezed
class LastInformationDto with _$LastInformationDto {
  const LastInformationDto._();

  const factory LastInformationDto({
    required String key,
    required String name,
    required String unit,
    required int date,
    required double value,
  }) = _LastInformationDto;

  factory LastInformationDto.fromJson(Map<String, dynamic> json) =>
      _$LastInformationDtoFromJson(json);

  LastInformation toDomain() => LastInformation(
        key: key,
        name: name,
        unit: unit,
        date: DateTime.fromMillisecondsSinceEpoch(date * 1000),
        value: value,
      );
}
