// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LastInformation {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LastInformationCopyWith<LastInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastInformationCopyWith<$Res> {
  factory $LastInformationCopyWith(
          LastInformation value, $Res Function(LastInformation) then) =
      _$LastInformationCopyWithImpl<$Res>;
  $Res call(
      {String key, String name, String unit, DateTime date, double value});
}

/// @nodoc
class _$LastInformationCopyWithImpl<$Res>
    implements $LastInformationCopyWith<$Res> {
  _$LastInformationCopyWithImpl(this._value, this._then);

  final LastInformation _value;
  // ignore: unused_field
  final $Res Function(LastInformation) _then;

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
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LastInformationCopyWith<$Res>
    implements $LastInformationCopyWith<$Res> {
  factory _$$_LastInformationCopyWith(
          _$_LastInformation value, $Res Function(_$_LastInformation) then) =
      __$$_LastInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key, String name, String unit, DateTime date, double value});
}

/// @nodoc
class __$$_LastInformationCopyWithImpl<$Res>
    extends _$LastInformationCopyWithImpl<$Res>
    implements _$$_LastInformationCopyWith<$Res> {
  __$$_LastInformationCopyWithImpl(
      _$_LastInformation _value, $Res Function(_$_LastInformation) _then)
      : super(_value, (v) => _then(v as _$_LastInformation));

  @override
  _$_LastInformation get _value => super._value as _$_LastInformation;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? unit = freezed,
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_LastInformation(
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
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LastInformation implements _LastInformation {
  const _$_LastInformation(
      {required this.key,
      required this.name,
      required this.unit,
      required this.date,
      required this.value});

  @override
  final String key;
  @override
  final String name;
  @override
  final String unit;
  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'LastInformation(key: $key, name: $name, unit: $unit, date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastInformation &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

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
  _$$_LastInformationCopyWith<_$_LastInformation> get copyWith =>
      __$$_LastInformationCopyWithImpl<_$_LastInformation>(this, _$identity);
}

abstract class _LastInformation implements LastInformation {
  const factory _LastInformation(
      {required final String key,
      required final String name,
      required final String unit,
      required final DateTime date,
      required final double value}) = _$_LastInformation;

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LastInformationCopyWith<_$_LastInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
