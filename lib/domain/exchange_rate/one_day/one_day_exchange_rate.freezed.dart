// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'one_day_exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OneDayExchangeRateTearOff {
  const _$OneDayExchangeRateTearOff();

// ignore: unused_element
  _OneDayExchangeRate call({double nb, DateTime nbDate}) {
    return _OneDayExchangeRate(
      nb: nb,
      nbDate: nbDate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OneDayExchangeRate = _$OneDayExchangeRateTearOff();

/// @nodoc
mixin _$OneDayExchangeRate {
  double get nb;
  DateTime get nbDate;

  $OneDayExchangeRateCopyWith<OneDayExchangeRate> get copyWith;
}

/// @nodoc
abstract class $OneDayExchangeRateCopyWith<$Res> {
  factory $OneDayExchangeRateCopyWith(
          OneDayExchangeRate value, $Res Function(OneDayExchangeRate) then) =
      _$OneDayExchangeRateCopyWithImpl<$Res>;
  $Res call({double nb, DateTime nbDate});
}

/// @nodoc
class _$OneDayExchangeRateCopyWithImpl<$Res>
    implements $OneDayExchangeRateCopyWith<$Res> {
  _$OneDayExchangeRateCopyWithImpl(this._value, this._then);

  final OneDayExchangeRate _value;
  // ignore: unused_field
  final $Res Function(OneDayExchangeRate) _then;

  @override
  $Res call({
    Object nb = freezed,
    Object nbDate = freezed,
  }) {
    return _then(_value.copyWith(
      nb: nb == freezed ? _value.nb : nb as double,
      nbDate: nbDate == freezed ? _value.nbDate : nbDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$OneDayExchangeRateCopyWith<$Res>
    implements $OneDayExchangeRateCopyWith<$Res> {
  factory _$OneDayExchangeRateCopyWith(
          _OneDayExchangeRate value, $Res Function(_OneDayExchangeRate) then) =
      __$OneDayExchangeRateCopyWithImpl<$Res>;
  @override
  $Res call({double nb, DateTime nbDate});
}

/// @nodoc
class __$OneDayExchangeRateCopyWithImpl<$Res>
    extends _$OneDayExchangeRateCopyWithImpl<$Res>
    implements _$OneDayExchangeRateCopyWith<$Res> {
  __$OneDayExchangeRateCopyWithImpl(
      _OneDayExchangeRate _value, $Res Function(_OneDayExchangeRate) _then)
      : super(_value, (v) => _then(v as _OneDayExchangeRate));

  @override
  _OneDayExchangeRate get _value => super._value as _OneDayExchangeRate;

  @override
  $Res call({
    Object nb = freezed,
    Object nbDate = freezed,
  }) {
    return _then(_OneDayExchangeRate(
      nb: nb == freezed ? _value.nb : nb as double,
      nbDate: nbDate == freezed ? _value.nbDate : nbDate as DateTime,
    ));
  }
}

/// @nodoc
class _$_OneDayExchangeRate extends _OneDayExchangeRate {
  const _$_OneDayExchangeRate({this.nb, this.nbDate}) : super._();

  @override
  final double nb;
  @override
  final DateTime nbDate;

  @override
  String toString() {
    return 'OneDayExchangeRate(nb: $nb, nbDate: $nbDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OneDayExchangeRate &&
            (identical(other.nb, nb) ||
                const DeepCollectionEquality().equals(other.nb, nb)) &&
            (identical(other.nbDate, nbDate) ||
                const DeepCollectionEquality().equals(other.nbDate, nbDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nb) ^
      const DeepCollectionEquality().hash(nbDate);

  @override
  _$OneDayExchangeRateCopyWith<_OneDayExchangeRate> get copyWith =>
      __$OneDayExchangeRateCopyWithImpl<_OneDayExchangeRate>(this, _$identity);
}

abstract class _OneDayExchangeRate extends OneDayExchangeRate {
  const _OneDayExchangeRate._() : super._();
  const factory _OneDayExchangeRate({double nb, DateTime nbDate}) =
      _$_OneDayExchangeRate;

  @override
  double get nb;
  @override
  DateTime get nbDate;
  @override
  _$OneDayExchangeRateCopyWith<_OneDayExchangeRate> get copyWith;
}
