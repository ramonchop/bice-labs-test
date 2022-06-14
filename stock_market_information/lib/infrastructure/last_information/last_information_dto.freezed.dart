// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_information_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LastInformationDto _$LastInformationDtoFromJson(Map<String, dynamic> json) {
  return _LastInformationDto.fromJson(json);
}

/// @nodoc
mixin _$LastInformationDto {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastInformationDtoCopyWith<LastInformationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastInformationDtoCopyWith<$Res> {
  factory $LastInformationDtoCopyWith(
          LastInformationDto value, $Res Function(LastInformationDto) then) =
      _$LastInformationDtoCopyWithImpl<$Res>;
  $Res call({String key, String name, String unit, int date, double value});
}

/// @nodoc
class _$LastInformationDtoCopyWithImpl<$Res>
    implements $LastInformationDtoCopyWith<$Res> {
  _$LastInformationDtoCopyWithImpl(this._value, this._then);

  final LastInformationDto _value;
  // ignore: unused_field
  final $Res Function(LastInformationDto) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? unit = freezed,
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LastInformationDtoCopyWith<$Res>
    implements $LastInformationDtoCopyWith<$Res> {
  factory _$$_LastInformationDtoCopyWith(_$_LastInformationDto value,
          $Res Function(_$_LastInformationDto) then) =
      __$$_LastInformationDtoCopyWithImpl<$Res>;
  @override
  $Res call({String key, String name, String unit, int date, double value});
}

/// @nodoc
class __$$_LastInformationDtoCopyWithImpl<$Res>
    extends _$LastInformationDtoCopyWithImpl<$Res>
    implements _$$_LastInformationDtoCopyWith<$Res> {
  __$$_LastInformationDtoCopyWithImpl(
      _$_LastInformationDto _value, $Res Function(_$_LastInformationDto) _then)
      : super(_value, (v) => _then(v as _$_LastInformationDto));

  @override
  _$_LastInformationDto get _value => super._value as _$_LastInformationDto;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? unit = freezed,
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_LastInformationDto(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastInformationDto extends _LastInformationDto {
  const _$_LastInformationDto(
      {required this.key,
      required this.name,
      required this.unit,
      required this.date,
      required this.value})
      : super._();

  factory _$_LastInformationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LastInformationDtoFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  final String unit;
  @override
  final int date;
  @override
  final double value;

  @override
  String toString() {
    return 'LastInformationDto(key: $key, name: $name, unit: $unit, date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastInformationDto &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_LastInformationDtoCopyWith<_$_LastInformationDto> get copyWith =>
      __$$_LastInformationDtoCopyWithImpl<_$_LastInformationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastInformationDtoToJson(this);
  }
}

abstract class _LastInformationDto extends LastInformationDto {
  const factory _LastInformationDto(
      {required final String key,
      required final String name,
      required final String unit,
      required final int date,
      required final double value}) = _$_LastInformationDto;
  const _LastInformationDto._() : super._();

  factory _LastInformationDto.fromJson(Map<String, dynamic> json) =
      _$_LastInformationDto.fromJson;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  int get date => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LastInformationDtoCopyWith<_$_LastInformationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
