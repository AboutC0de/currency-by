// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExchangeRateTearOff {
  const _$ExchangeRateTearOff();

// ignore: unused_element
  _ExchangeRate call({String id}) {
    return _ExchangeRate(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExchangeRate = _$ExchangeRateTearOff();

/// @nodoc
mixin _$ExchangeRate {
  String get id;

  $ExchangeRateCopyWith<ExchangeRate> get copyWith;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res> implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  final ExchangeRate _value;
  // ignore: unused_field
  final $Res Function(ExchangeRate) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeRateCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$ExchangeRateCopyWith(
          _ExchangeRate value, $Res Function(_ExchangeRate) then) =
      __$ExchangeRateCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$ExchangeRateCopyWithImpl<$Res> extends _$ExchangeRateCopyWithImpl<$Res>
    implements _$ExchangeRateCopyWith<$Res> {
  __$ExchangeRateCopyWithImpl(
      _ExchangeRate _value, $Res Function(_ExchangeRate) _then)
      : super(_value, (v) => _then(v as _ExchangeRate));

  @override
  _ExchangeRate get _value => super._value as _ExchangeRate;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_ExchangeRate(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_ExchangeRate extends _ExchangeRate {
  const _$_ExchangeRate({this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'ExchangeRate(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExchangeRate &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith =>
      __$ExchangeRateCopyWithImpl<_ExchangeRate>(this, _$identity);
}

abstract class _ExchangeRate extends ExchangeRate {
  const _ExchangeRate._() : super._();
  const factory _ExchangeRate({String id}) = _$_ExchangeRate;

  @override
  String get id;
  @override
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith;
}
