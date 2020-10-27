// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BidTearOff {
  const _$BidTearOff();

// ignore: unused_element
  _Bid call({@required double bidPrice, @required Timestamp date}) {
    return _Bid(
      bidPrice: bidPrice,
      date: date,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Bid = _$BidTearOff();

/// @nodoc
mixin _$Bid {
  double get bidPrice;
  Timestamp get date;

  $BidCopyWith<Bid> get copyWith;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res>;
  $Res call({double bidPrice, Timestamp date});
}

/// @nodoc
class _$BidCopyWithImpl<$Res> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  final Bid _value;
  // ignore: unused_field
  final $Res Function(Bid) _then;

  @override
  $Res call({
    Object bidPrice = freezed,
    Object date = freezed,
  }) {
    return _then(_value.copyWith(
      bidPrice: bidPrice == freezed ? _value.bidPrice : bidPrice as double,
      date: date == freezed ? _value.date : date as Timestamp,
    ));
  }
}

/// @nodoc
abstract class _$BidCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$BidCopyWith(_Bid value, $Res Function(_Bid) then) =
      __$BidCopyWithImpl<$Res>;
  @override
  $Res call({double bidPrice, Timestamp date});
}

/// @nodoc
class __$BidCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res>
    implements _$BidCopyWith<$Res> {
  __$BidCopyWithImpl(_Bid _value, $Res Function(_Bid) _then)
      : super(_value, (v) => _then(v as _Bid));

  @override
  _Bid get _value => super._value as _Bid;

  @override
  $Res call({
    Object bidPrice = freezed,
    Object date = freezed,
  }) {
    return _then(_Bid(
      bidPrice: bidPrice == freezed ? _value.bidPrice : bidPrice as double,
      date: date == freezed ? _value.date : date as Timestamp,
    ));
  }
}

/// @nodoc
class _$_Bid extends _Bid {
  const _$_Bid({@required this.bidPrice, @required this.date})
      : assert(bidPrice != null),
        assert(date != null),
        super._();

  @override
  final double bidPrice;
  @override
  final Timestamp date;

  @override
  String toString() {
    return 'Bid(bidPrice: $bidPrice, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Bid &&
            (identical(other.bidPrice, bidPrice) ||
                const DeepCollectionEquality()
                    .equals(other.bidPrice, bidPrice)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bidPrice) ^
      const DeepCollectionEquality().hash(date);

  @override
  _$BidCopyWith<_Bid> get copyWith =>
      __$BidCopyWithImpl<_Bid>(this, _$identity);
}

abstract class _Bid extends Bid {
  const _Bid._() : super._();
  const factory _Bid({@required double bidPrice, @required Timestamp date}) =
      _$_Bid;

  @override
  double get bidPrice;
  @override
  Timestamp get date;
  @override
  _$BidCopyWith<_Bid> get copyWith;
}
