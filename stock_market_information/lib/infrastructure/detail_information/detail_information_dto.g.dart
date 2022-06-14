// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_information_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailInformationDto _$$_DetailInformationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_DetailInformationDto(
      date: json['date'] as int,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DetailInformationDtoToJson(
        _$_DetailInformationDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };
