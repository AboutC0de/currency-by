// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'one_day_exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OneDayExchangeRateTearOff {
  const _$OneDayExchangeRateTearOff();

  _OneDayExchangeRate call({required double nb, required DateTime nbDate}) {
    return _OneDayExchangeRate(
      nb: nb,
      nbDate: nbDate,
    );
  }
}

/// @nodoc
const $OneDayExchangeRate = _$OneDayExchangeRateTearOff();

/// @nodoc
mixin _$OneDayExchangeRate {
  double get nb => throw _privateConstructorUsedError;
  DateTime get nbDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneDayExchangeRateCopyWith<OneDayExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? nb = freezed,
    Object? nbDate = freezed,
  }) {
    return _then(_value.copyWith(
      nb: nb == freezed
          ? _value.nb
          : nb // ignore: cast_nullable_to_non_nullable
              as double,
      nbDate: nbDate == freezed
          ? _value.nbDate
          : nbDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    Object? nb = freezed,
    Object? nbDate = freezed,
  }) {
    return _then(_OneDayExchangeRate(
      nb: nb == freezed
          ? _value.nb
          : nb // ignore: cast_nullable_to_non_nullable
              as double,
      nbDate: nbDate == freezed
          ? _value.nbDate
          : nbDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
class _$_OneDayExchangeRate extends _OneDayExchangeRate {
  const _$_OneDayExchangeRate({required this.nb, required this.nbDate})
      : super._();

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

  @JsonKey(ignore: true)
  @override
  _$OneDayExchangeRateCopyWith<_OneDayExchangeRate> get copyWith =>
      __$OneDayExchangeRateCopyWithImpl<_OneDayExchangeRate>(this, _$identity);
}

abstract class _OneDayExchangeRate extends OneDayExchangeRate {
  const factory _OneDayExchangeRate(
      {required double nb, required DateTime nbDate}) = _$_OneDayExchangeRate;
  const _OneDayExchangeRate._() : super._();

  @override
  double get nb => throw _privateConstructorUsedError;
  @override
  DateTime get nbDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OneDayExchangeRateCopyWith<_OneDayExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
