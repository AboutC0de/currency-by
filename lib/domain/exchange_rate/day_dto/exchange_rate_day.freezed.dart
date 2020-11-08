// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exchange_rate_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExchangeRateDayTearOff {
  const _$ExchangeRateDayTearOff();

// ignore: unused_element
  _ExchangeRateDay call({String id}) {
    return _ExchangeRateDay(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExchangeRateDay = _$ExchangeRateDayTearOff();

/// @nodoc
mixin _$ExchangeRateDay {
  String get id;

  $ExchangeRateDayCopyWith<ExchangeRateDay> get copyWith;
}

/// @nodoc
abstract class $ExchangeRateDayCopyWith<$Res> {
  factory $ExchangeRateDayCopyWith(
          ExchangeRateDay value, $Res Function(ExchangeRateDay) then) =
      _$ExchangeRateDayCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ExchangeRateDayCopyWithImpl<$Res>
    implements $ExchangeRateDayCopyWith<$Res> {
  _$ExchangeRateDayCopyWithImpl(this._value, this._then);

  final ExchangeRateDay _value;
  // ignore: unused_field
  final $Res Function(ExchangeRateDay) _then;

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
abstract class _$ExchangeRateDayCopyWith<$Res>
    implements $ExchangeRateDayCopyWith<$Res> {
  factory _$ExchangeRateDayCopyWith(
          _ExchangeRateDay value, $Res Function(_ExchangeRateDay) then) =
      __$ExchangeRateDayCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$ExchangeRateDayCopyWithImpl<$Res>
    extends _$ExchangeRateDayCopyWithImpl<$Res>
    implements _$ExchangeRateDayCopyWith<$Res> {
  __$ExchangeRateDayCopyWithImpl(
      _ExchangeRateDay _value, $Res Function(_ExchangeRateDay) _then)
      : super(_value, (v) => _then(v as _ExchangeRateDay));

  @override
  _ExchangeRateDay get _value => super._value as _ExchangeRateDay;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_ExchangeRateDay(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_ExchangeRateDay extends _ExchangeRateDay {
  const _$_ExchangeRateDay({this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'ExchangeRateDay(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExchangeRateDay &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$ExchangeRateDayCopyWith<_ExchangeRateDay> get copyWith =>
      __$ExchangeRateDayCopyWithImpl<_ExchangeRateDay>(this, _$identity);
}

abstract class _ExchangeRateDay extends ExchangeRateDay {
  const _ExchangeRateDay._() : super._();
  const factory _ExchangeRateDay({String id}) = _$_ExchangeRateDay;

  @override
  String get id;
  @override
  _$ExchangeRateDayCopyWith<_ExchangeRateDay> get copyWith;
}
