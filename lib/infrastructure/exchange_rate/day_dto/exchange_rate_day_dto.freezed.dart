// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exchange_rate_day_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExchangeRateDayDTO _$ExchangeRateDayDTOFromJson(Map<String, dynamic> json) {
  return _ExchangeRateDayDTO.fromJson(json);
}

/// @nodoc
class _$ExchangeRateDayDTOTearOff {
  const _$ExchangeRateDayDTOTearOff();

// ignore: unused_element
  _ExchangeRateDayDTO call() {
    return const _ExchangeRateDayDTO();
  }

// ignore: unused_element
  ExchangeRateDayDTO fromJson(Map<String, Object> json) {
    return ExchangeRateDayDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExchangeRateDayDTO = _$ExchangeRateDayDTOTearOff();

/// @nodoc
mixin _$ExchangeRateDayDTO {
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ExchangeRateDayDTOCopyWith<$Res> {
  factory $ExchangeRateDayDTOCopyWith(
          ExchangeRateDayDTO value, $Res Function(ExchangeRateDayDTO) then) =
      _$ExchangeRateDayDTOCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeRateDayDTOCopyWithImpl<$Res>
    implements $ExchangeRateDayDTOCopyWith<$Res> {
  _$ExchangeRateDayDTOCopyWithImpl(this._value, this._then);

  final ExchangeRateDayDTO _value;
  // ignore: unused_field
  final $Res Function(ExchangeRateDayDTO) _then;
}

/// @nodoc
abstract class _$ExchangeRateDayDTOCopyWith<$Res> {
  factory _$ExchangeRateDayDTOCopyWith(
          _ExchangeRateDayDTO value, $Res Function(_ExchangeRateDayDTO) then) =
      __$ExchangeRateDayDTOCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExchangeRateDayDTOCopyWithImpl<$Res>
    extends _$ExchangeRateDayDTOCopyWithImpl<$Res>
    implements _$ExchangeRateDayDTOCopyWith<$Res> {
  __$ExchangeRateDayDTOCopyWithImpl(
      _ExchangeRateDayDTO _value, $Res Function(_ExchangeRateDayDTO) _then)
      : super(_value, (v) => _then(v as _ExchangeRateDayDTO));

  @override
  _ExchangeRateDayDTO get _value => super._value as _ExchangeRateDayDTO;
}

@JsonSerializable()

/// @nodoc
class _$_ExchangeRateDayDTO extends _ExchangeRateDayDTO {
  const _$_ExchangeRateDayDTO() : super._();

  factory _$_ExchangeRateDayDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ExchangeRateDayDTOFromJson(json);

  @override
  String toString() {
    return 'ExchangeRateDayDTO()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExchangeRateDayDTO);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExchangeRateDayDTOToJson(this);
  }
}

abstract class _ExchangeRateDayDTO extends ExchangeRateDayDTO {
  const _ExchangeRateDayDTO._() : super._();
  const factory _ExchangeRateDayDTO() = _$_ExchangeRateDayDTO;

  factory _ExchangeRateDayDTO.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateDayDTO.fromJson;
}
