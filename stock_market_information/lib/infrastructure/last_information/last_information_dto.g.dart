// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_information_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastInformationDto _$$_LastInformationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LastInformationDto(
      key: json['key'] as String,
      name: json['name'] as String,
      unit: json['unit'] as String,
      date: json['date'] as int,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LastInformationDtoToJson(
        _$_LastInformationDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'unit': instance.unit,
      'date': instance.date,
      'value': instance.value,
    };
