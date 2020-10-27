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
  _ExchangeRate call(
      {@required String currencyName, @required List<Bid> bids}) {
    return _ExchangeRate(
      currencyName: currencyName,
      bids: bids,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExchangeRate = _$ExchangeRateTearOff();

/// @nodoc
mixin _$ExchangeRate {
  String get currencyName;
  List<Bid> get bids;

  $ExchangeRateCopyWith<ExchangeRate> get copyWith;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res>;
  $Res call({String currencyName, List<Bid> bids});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res> implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  final ExchangeRate _value;
  // ignore: unused_field
  final $Res Function(ExchangeRate) _then;

  @override
  $Res call({
    Object currencyName = freezed,
    Object bids = freezed,
  }) {
    return _then(_value.copyWith(
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      bids: bids == freezed ? _value.bids : bids as List<Bid>,
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
  $Res call({String currencyName, List<Bid> bids});
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
    Object currencyName = freezed,
    Object bids = freezed,
  }) {
    return _then(_ExchangeRate(
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      bids: bids == freezed ? _value.bids : bids as List<Bid>,
    ));
  }
}

/// @nodoc
class _$_ExchangeRate extends _ExchangeRate {
  const _$_ExchangeRate({@required this.currencyName, @required this.bids})
      : assert(currencyName != null),
        assert(bids != null),
        super._();

  @override
  final String currencyName;
  @override
  final List<Bid> bids;

  @override
  String toString() {
    return 'ExchangeRate(currencyName: $currencyName, bids: $bids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExchangeRate &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)) &&
            (identical(other.bids, bids) ||
                const DeepCollectionEquality().equals(other.bids, bids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currencyName) ^
      const DeepCollectionEquality().hash(bids);

  @override
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith =>
      __$ExchangeRateCopyWithImpl<_ExchangeRate>(this, _$identity);
}

abstract class _ExchangeRate extends ExchangeRate {
  const _ExchangeRate._() : super._();
  const factory _ExchangeRate(
      {@required String currencyName,
      @required List<Bid> bids}) = _$_ExchangeRate;

  @override
  String get currencyName;
  @override
  List<Bid> get bids;
  @override
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith;
}
