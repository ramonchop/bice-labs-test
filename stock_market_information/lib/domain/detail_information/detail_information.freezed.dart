// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailInformation {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailInformationCopyWith<DetailInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInformationCopyWith<$Res> {
  factory $DetailInformationCopyWith(
          DetailInformation value, $Res Function(DetailInformation) then) =
      _$DetailInformationCopyWithImpl<$Res>;
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$DetailInformationCopyWithImpl<$Res>
    implements $DetailInformationCopyWith<$Res> {
  _$DetailInformationCopyWithImpl(this._value, this._then);

  final DetailInformation _value;
  // ignore: unused_field
  final $Res Function(DetailInformation) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_DetailInformationCopyWith<$Res>
    implements $DetailInformationCopyWith<$Res> {
  factory _$$_DetailInformationCopyWith(_$_DetailInformation value,
          $Res Function(_$_DetailInformation) then) =
      __$$_DetailInformationCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$$_DetailInformationCopyWithImpl<$Res>
    extends _$DetailInformationCopyWithImpl<$Res>
    implements _$$_DetailInformationCopyWith<$Res> {
  __$$_DetailInformationCopyWithImpl(
      _$_DetailInformation _value, $Res Function(_$_DetailInformation) _then)
      : super(_value, (v) => _then(v as _$_DetailInformation));

  @override
  _$_DetailInformation get _value => super._value as _$_DetailInformation;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_DetailInformation(
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

class _$_DetailInformation implements _DetailInformation {
  const _$_DetailInformation({required this.date, required this.value});

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'DetailInformation(date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailInformation &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_DetailInformationCopyWith<_$_DetailInformation> get copyWith =>
      __$$_DetailInformationCopyWithImpl<_$_DetailInformation>(
          this, _$identity);
}

abstract class _DetailInformation implements DetailInformation {
  const factory _DetailInformation(
      {required final DateTime date,
      required final double value}) = _$_DetailInformation;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailInformationCopyWith<_$_DetailInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
