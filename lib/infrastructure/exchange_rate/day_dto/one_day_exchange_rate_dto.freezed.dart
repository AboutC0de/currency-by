// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'one_day_exchange_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OneDayExchangeRateDTO _$OneDayExchangeRateDTOFromJson(
    Map<String, dynamic> json) {
  return _OneDayExchangeRateDTO.fromJson(json);
}

/// @nodoc
class _$OneDayExchangeRateDTOTearOff {
  const _$OneDayExchangeRateDTOTearOff();

// ignore: unused_element
  _OneDayExchangeRateDTO call(
      {double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate}) {
    return _OneDayExchangeRateDTO(
      nb: nb,
      nbDate: nbDate,
    );
  }

// ignore: unused_element
  OneDayExchangeRateDTO fromJson(Map<String, Object> json) {
    return OneDayExchangeRateDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OneDayExchangeRateDTO = _$OneDayExchangeRateDTOTearOff();

/// @nodoc
mixin _$OneDayExchangeRateDTO {
  double get nb;
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate;

  Map<String, dynamic> toJson();
  $OneDayExchangeRateDTOCopyWith<OneDayExchangeRateDTO> get copyWith;
}

/// @nodoc
abstract class $OneDayExchangeRateDTOCopyWith<$Res> {
  factory $OneDayExchangeRateDTOCopyWith(OneDayExchangeRateDTO value,
          $Res Function(OneDayExchangeRateDTO) then) =
      _$OneDayExchangeRateDTOCopyWithImpl<$Res>;
  $Res call(
      {double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate});
}

/// @nodoc
class _$OneDayExchangeRateDTOCopyWithImpl<$Res>
    implements $OneDayExchangeRateDTOCopyWith<$Res> {
  _$OneDayExchangeRateDTOCopyWithImpl(this._value, this._then);

  final OneDayExchangeRateDTO _value;
  // ignore: unused_field
  final $Res Function(OneDayExchangeRateDTO) _then;

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
abstract class _$OneDayExchangeRateDTOCopyWith<$Res>
    implements $OneDayExchangeRateDTOCopyWith<$Res> {
  factory _$OneDayExchangeRateDTOCopyWith(_OneDayExchangeRateDTO value,
          $Res Function(_OneDayExchangeRateDTO) then) =
      __$OneDayExchangeRateDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate});
}

/// @nodoc
class __$OneDayExchangeRateDTOCopyWithImpl<$Res>
    extends _$OneDayExchangeRateDTOCopyWithImpl<$Res>
    implements _$OneDayExchangeRateDTOCopyWith<$Res> {
  __$OneDayExchangeRateDTOCopyWithImpl(_OneDayExchangeRateDTO _value,
      $Res Function(_OneDayExchangeRateDTO) _then)
      : super(_value, (v) => _then(v as _OneDayExchangeRateDTO));

  @override
  _OneDayExchangeRateDTO get _value => super._value as _OneDayExchangeRateDTO;

  @override
  $Res call({
    Object nb = freezed,
    Object nbDate = freezed,
  }) {
    return _then(_OneDayExchangeRateDTO(
      nb: nb == freezed ? _value.nb : nb as double,
      nbDate: nbDate == freezed ? _value.nbDate : nbDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OneDayExchangeRateDTO extends _OneDayExchangeRateDTO {
  const _$_OneDayExchangeRateDTO(
      {this.nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          this.nbDate})
      : super._();

  factory _$_OneDayExchangeRateDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OneDayExchangeRateDTOFromJson(json);

  @override
  final double nb;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  final DateTime nbDate;

  @override
  String toString() {
    return 'OneDayExchangeRateDTO(nb: $nb, nbDate: $nbDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OneDayExchangeRateDTO &&
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
  _$OneDayExchangeRateDTOCopyWith<_OneDayExchangeRateDTO> get copyWith =>
      __$OneDayExchangeRateDTOCopyWithImpl<_OneDayExchangeRateDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OneDayExchangeRateDTOToJson(this);
  }
}

abstract class _OneDayExchangeRateDTO extends OneDayExchangeRateDTO {
  const _OneDayExchangeRateDTO._() : super._();
  const factory _OneDayExchangeRateDTO(
      {double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate}) = _$_OneDayExchangeRateDTO;

  factory _OneDayExchangeRateDTO.fromJson(Map<String, dynamic> json) =
      _$_OneDayExchangeRateDTO.fromJson;

  @override
  double get nb;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate;
  @override
  _$OneDayExchangeRateDTOCopyWith<_OneDayExchangeRateDTO> get copyWith;
}
