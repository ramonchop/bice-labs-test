// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_information_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailInformationDto _$DetailInformationDtoFromJson(Map<String, dynamic> json) {
  return _DetailInformationDto.fromJson(json);
}

/// @nodoc
mixin _$DetailInformationDto {
  int get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailInformationDtoCopyWith<DetailInformationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInformationDtoCopyWith<$Res> {
  factory $DetailInformationDtoCopyWith(DetailInformationDto value,
          $Res Function(DetailInformationDto) then) =
      _$DetailInformationDtoCopyWithImpl<$Res>;
  $Res call({int date, double value});
}

/// @nodoc
class _$DetailInformationDtoCopyWithImpl<$Res>
    implements $DetailInformationDtoCopyWith<$Res> {
  _$DetailInformationDtoCopyWithImpl(this._value, this._then);

  final DetailInformationDto _value;
  // ignore: unused_field
  final $Res Function(DetailInformationDto) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_DetailInformationDtoCopyWith<$Res>
    implements $DetailInformationDtoCopyWith<$Res> {
  factory _$$_DetailInformationDtoCopyWith(_$_DetailInformationDto value,
          $Res Function(_$_DetailInformationDto) then) =
      __$$_DetailInformationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int date, double value});
}

/// @nodoc
class __$$_DetailInformationDtoCopyWithImpl<$Res>
    extends _$DetailInformationDtoCopyWithImpl<$Res>
    implements _$$_DetailInformationDtoCopyWith<$Res> {
  __$$_DetailInformationDtoCopyWithImpl(_$_DetailInformationDto _value,
      $Res Function(_$_DetailInformationDto) _then)
      : super(_value, (v) => _then(v as _$_DetailInformationDto));

  @override
  _$_DetailInformationDto get _value => super._value as _$_DetailInformationDto;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_DetailInformationDto(
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
class _$_DetailInformationDto extends _DetailInformationDto {
  const _$_DetailInformationDto({required this.date, required this.value})
      : super._();

  factory _$_DetailInformationDto.fromJson(Map<String, dynamic> json) =>
      _$$_DetailInformationDtoFromJson(json);

  @override
  final int date;
  @override
  final double value;

  @override
  String toString() {
    return 'DetailInformationDto(date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailInformationDto &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DetailInformationDtoCopyWith<_$_DetailInformationDto> get copyWith =>
      __$$_DetailInformationDtoCopyWithImpl<_$_DetailInformationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailInformationDtoToJson(this);
  }
}

abstract class _DetailInformationDto extends DetailInformationDto {
  const factory _DetailInformationDto(
      {required final int date,
      required final double value}) = _$_DetailInformationDto;
  const _DetailInformationDto._() : super._();

  factory _DetailInformationDto.fromJson(Map<String, dynamic> json) =
      _$_DetailInformationDto.fromJson;

  @override
  int get date => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailInformationDtoCopyWith<_$_DetailInformationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
