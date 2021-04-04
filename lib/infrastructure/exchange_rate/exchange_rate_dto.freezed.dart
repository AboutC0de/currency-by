// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exchange_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRateDTO _$ExchangeRateDTOFromJson(Map<String, dynamic> json) {
  return _ExchangeRateDTO.fromJson(json);
}

/// @nodoc
class _$ExchangeRateDTOTearOff {
  const _$ExchangeRateDTOTearOff();

  _ExchangeRateDTO call({required double amount,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required DateTime bcseDate,
    required double bcseDiff,
    required double bcseRate,
    required double buy,
    required double buyDiff,
    required String currencyCode,
    required String name,
    required String namePlural,
    required String namePluralShort,
    required double nb,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required DateTime nbDate,
    required double nbDiff,
    required double sell,
    required double sellDiff,
    required bool visible}) {
    return _ExchangeRateDTO(
      amount: amount,
      bcseDate: bcseDate,
      bcseDiff: bcseDiff,
      bcseRate: bcseRate,
      buy: buy,
      buyDiff: buyDiff,
      currencyCode: currencyCode,
      name: name,
      namePlural: namePlural,
      namePluralShort: namePluralShort,
      nb: nb,
      nbDate: nbDate,
      nbDiff: nbDiff,
      sell: sell,
      sellDiff: sellDiff,
      visible: visible,
    );
  }

  ExchangeRateDTO fromJson(Map<String, Object> json) {
    return ExchangeRateDTO.fromJson(json);
  }
}

/// @nodoc
const $ExchangeRateDTO = _$ExchangeRateDTOTearOff();

/// @nodoc
mixin _$ExchangeRateDTO {
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get bcseDate => throw _privateConstructorUsedError;

  double get bcseDiff => throw _privateConstructorUsedError;

  double get bcseRate => throw _privateConstructorUsedError;

  double get buy => throw _privateConstructorUsedError;

  double get buyDiff => throw _privateConstructorUsedError;

  String get currencyCode => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get namePlural => throw _privateConstructorUsedError;

  String get namePluralShort => throw _privateConstructorUsedError;

  double get nb => throw _privateConstructorUsedError;

  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate => throw _privateConstructorUsedError;

  double get nbDiff => throw _privateConstructorUsedError;

  double get sell => throw _privateConstructorUsedError;

  double get sellDiff => throw _privateConstructorUsedError;

  bool get visible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRateDTOCopyWith<ExchangeRateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateDTOCopyWith<$Res> {
  factory $ExchangeRateDTOCopyWith(ExchangeRateDTO value,
      $Res Function(ExchangeRateDTO) then) =
  _$ExchangeRateDTOCopyWithImpl<$Res>;

  $Res call({double amount,
    @JsonKey(
        fromJson: stringToDateTime, toJson: dateTimeToString) DateTime bcseDate,
    double bcseDiff,
    double bcseRate,
    double buy,
    double buyDiff,
    String currencyCode,
    String name,
    String namePlural,
    String namePluralShort,
    double nb,
    @JsonKey(
        fromJson: stringToDateTime, toJson: dateTimeToString) DateTime nbDate,
    double nbDiff,
    double sell,
    double sellDiff,
    bool visible});
}

/// @nodoc
class _$ExchangeRateDTOCopyWithImpl<$Res>
    implements $ExchangeRateDTOCopyWith<$Res> {
  _$ExchangeRateDTOCopyWithImpl(this._value, this._then);

  final ExchangeRateDTO _value;

  // ignore: unused_field
  final $Res Function(ExchangeRateDTO) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? bcseDate = freezed,
    Object? bcseDiff = freezed,
    Object? bcseRate = freezed,
    Object? buy = freezed,
    Object? buyDiff = freezed,
    Object? currencyCode = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? namePluralShort = freezed,
    Object? nb = freezed,
    Object? nbDate = freezed,
    Object? nbDiff = freezed,
    Object? sell = freezed,
    Object? sellDiff = freezed,
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
      as double,
      bcseDate: bcseDate == freezed
          ? _value.bcseDate
          : bcseDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      bcseDiff: bcseDiff == freezed
          ? _value.bcseDiff
          : bcseDiff // ignore: cast_nullable_to_non_nullable
      as double,
      bcseRate: bcseRate == freezed
          ? _value.bcseRate
          : bcseRate // ignore: cast_nullable_to_non_nullable
      as double,
      buy: buy == freezed
          ? _value.buy
          : buy // ignore: cast_nullable_to_non_nullable
      as double,
      buyDiff: buyDiff == freezed
          ? _value.buyDiff
          : buyDiff // ignore: cast_nullable_to_non_nullable
      as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
      as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
      as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
      as String,
      namePluralShort: namePluralShort == freezed
          ? _value.namePluralShort
          : namePluralShort // ignore: cast_nullable_to_non_nullable
      as String,
      nb: nb == freezed
          ? _value.nb
          : nb // ignore: cast_nullable_to_non_nullable
      as double,
      nbDate: nbDate == freezed
          ? _value.nbDate
          : nbDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      nbDiff: nbDiff == freezed
          ? _value.nbDiff
          : nbDiff // ignore: cast_nullable_to_non_nullable
      as double,
      sell: sell == freezed
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
      as double,
      sellDiff: sellDiff == freezed
          ? _value.sellDiff
          : sellDiff // ignore: cast_nullable_to_non_nullable
      as double,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeRateDTOCopyWith<$Res>
    implements $ExchangeRateDTOCopyWith<$Res> {
  factory _$ExchangeRateDTOCopyWith(_ExchangeRateDTO value,
      $Res Function(_ExchangeRateDTO) then) =
  __$ExchangeRateDTOCopyWithImpl<$Res>;

  @override
  $Res call({double amount,
    @JsonKey(
        fromJson: stringToDateTime, toJson: dateTimeToString) DateTime bcseDate,
    double bcseDiff,
    double bcseRate,
    double buy,
    double buyDiff,
    String currencyCode,
    String name,
    String namePlural,
    String namePluralShort,
    double nb,
    @JsonKey(
        fromJson: stringToDateTime, toJson: dateTimeToString) DateTime nbDate,
    double nbDiff,
    double sell,
    double sellDiff,
    bool visible});
}

/// @nodoc
class __$ExchangeRateDTOCopyWithImpl<$Res>
    extends _$ExchangeRateDTOCopyWithImpl<$Res>
    implements _$ExchangeRateDTOCopyWith<$Res> {
  __$ExchangeRateDTOCopyWithImpl(_ExchangeRateDTO _value,
      $Res Function(_ExchangeRateDTO) _then)
      : super(_value, (v) => _then(v as _ExchangeRateDTO));

  @override
  _ExchangeRateDTO get _value => super._value as _ExchangeRateDTO;

  @override
  $Res call({
    Object? amount = freezed,
    Object? bcseDate = freezed,
    Object? bcseDiff = freezed,
    Object? bcseRate = freezed,
    Object? buy = freezed,
    Object? buyDiff = freezed,
    Object? currencyCode = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? namePluralShort = freezed,
    Object? nb = freezed,
    Object? nbDate = freezed,
    Object? nbDiff = freezed,
    Object? sell = freezed,
    Object? sellDiff = freezed,
    Object? visible = freezed,
  }) {
    return _then(_ExchangeRateDTO(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
      as double,
      bcseDate: bcseDate == freezed
          ? _value.bcseDate
          : bcseDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      bcseDiff: bcseDiff == freezed
          ? _value.bcseDiff
          : bcseDiff // ignore: cast_nullable_to_non_nullable
      as double,
      bcseRate: bcseRate == freezed
          ? _value.bcseRate
          : bcseRate // ignore: cast_nullable_to_non_nullable
      as double,
      buy: buy == freezed
          ? _value.buy
          : buy // ignore: cast_nullable_to_non_nullable
      as double,
      buyDiff: buyDiff == freezed
          ? _value.buyDiff
          : buyDiff // ignore: cast_nullable_to_non_nullable
      as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
      as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
      as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
      as String,
      namePluralShort: namePluralShort == freezed
          ? _value.namePluralShort
          : namePluralShort // ignore: cast_nullable_to_non_nullable
      as String,
      nb: nb == freezed
          ? _value.nb
          : nb // ignore: cast_nullable_to_non_nullable
      as double,
      nbDate: nbDate == freezed
          ? _value.nbDate
          : nbDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      nbDiff: nbDiff == freezed
          ? _value.nbDiff
          : nbDiff // ignore: cast_nullable_to_non_nullable
      as double,
      sell: sell == freezed
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
      as double,
      sellDiff: sellDiff == freezed
          ? _value.sellDiff
          : sellDiff // ignore: cast_nullable_to_non_nullable
      as double,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_ExchangeRateDTO extends _ExchangeRateDTO {
  const _$_ExchangeRateDTO({required this.amount,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required this.bcseDate,
    required this.bcseDiff,
    required this.bcseRate,
    required this.buy,
    required this.buyDiff,
    required this.currencyCode,
    required this.name,
    required this.namePlural,
    required this.namePluralShort,
    required this.nb,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required this.nbDate,
    required this.nbDiff,
    required this.sell,
    required this.sellDiff,
    required this.visible})
      : super._();

  factory _$_ExchangeRateDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ExchangeRateDTOFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  final DateTime bcseDate;
  @override
  final double bcseDiff;
  @override
  final double bcseRate;
  @override
  final double buy;
  @override
  final double buyDiff;
  @override
  final String currencyCode;
  @override
  final String name;
  @override
  final String namePlural;
  @override
  final String namePluralShort;
  @override
  final double nb;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  final DateTime nbDate;
  @override
  final double nbDiff;
  @override
  final double sell;
  @override
  final double sellDiff;
  @override
  final bool visible;

  @override
  String toString() {
    return 'ExchangeRateDTO(amount: $amount, bcseDate: $bcseDate, bcseDiff: $bcseDiff, bcseRate: $bcseRate, buy: $buy, buyDiff: $buyDiff, currencyCode: $currencyCode, name: $name, namePlural: $namePlural, namePluralShort: $namePluralShort, nb: $nb, nbDate: $nbDate, nbDiff: $nbDiff, sell: $sell, sellDiff: $sellDiff, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExchangeRateDTO &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.bcseDate, bcseDate) ||
                const DeepCollectionEquality()
                    .equals(other.bcseDate, bcseDate)) &&
            (identical(other.bcseDiff, bcseDiff) ||
                const DeepCollectionEquality()
                    .equals(other.bcseDiff, bcseDiff)) &&
            (identical(other.bcseRate, bcseRate) ||
                const DeepCollectionEquality()
                    .equals(other.bcseRate, bcseRate)) &&
            (identical(other.buy, buy) ||
                const DeepCollectionEquality().equals(other.buy, buy)) &&
            (identical(other.buyDiff, buyDiff) ||
                const DeepCollectionEquality()
                    .equals(other.buyDiff, buyDiff)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.namePlural, namePlural) ||
                const DeepCollectionEquality()
                    .equals(other.namePlural, namePlural)) &&
            (identical(other.namePluralShort, namePluralShort) ||
                const DeepCollectionEquality()
                    .equals(other.namePluralShort, namePluralShort)) &&
            (identical(other.nb, nb) ||
                const DeepCollectionEquality().equals(other.nb, nb)) &&
            (identical(other.nbDate, nbDate) ||
                const DeepCollectionEquality().equals(other.nbDate, nbDate)) &&
            (identical(other.nbDiff, nbDiff) ||
                const DeepCollectionEquality().equals(other.nbDiff, nbDiff)) &&
            (identical(other.sell, sell) ||
                const DeepCollectionEquality().equals(other.sell, sell)) &&
            (identical(other.sellDiff, sellDiff) ||
                const DeepCollectionEquality()
                    .equals(other.sellDiff, sellDiff)) &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality().equals(other.visible, visible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(bcseDate) ^
      const DeepCollectionEquality().hash(bcseDiff) ^
      const DeepCollectionEquality().hash(bcseRate) ^
      const DeepCollectionEquality().hash(buy) ^
      const DeepCollectionEquality().hash(buyDiff) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(namePlural) ^
      const DeepCollectionEquality().hash(namePluralShort) ^
      const DeepCollectionEquality().hash(nb) ^
      const DeepCollectionEquality().hash(nbDate) ^
      const DeepCollectionEquality().hash(nbDiff) ^
      const DeepCollectionEquality().hash(sell) ^
      const DeepCollectionEquality().hash(sellDiff) ^
      const DeepCollectionEquality().hash(visible);

  @JsonKey(ignore: true)
  @override
  _$ExchangeRateDTOCopyWith<_ExchangeRateDTO> get copyWith =>
      __$ExchangeRateDTOCopyWithImpl<_ExchangeRateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExchangeRateDTOToJson(this);
  }
}

abstract class _ExchangeRateDTO extends ExchangeRateDTO {
  const factory _ExchangeRateDTO({required double amount,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required DateTime bcseDate,
    required double bcseDiff,
    required double bcseRate,
    required double buy,
    required double buyDiff,
    required String currencyCode,
    required String name,
    required String namePlural,
    required String namePluralShort,
    required double nb,
    @JsonKey(fromJson: stringToDateTime,
        toJson: dateTimeToString) required DateTime nbDate,
    required double nbDiff,
    required double sell,
    required double sellDiff,
    required bool visible}) = _$_ExchangeRateDTO;

  const _ExchangeRateDTO._() : super._();

  factory _ExchangeRateDTO.fromJson(Map<String, dynamic> json) =
  _$_ExchangeRateDTO.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;

  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get bcseDate => throw _privateConstructorUsedError;

  @override
  double get bcseDiff => throw _privateConstructorUsedError;

  @override
  double get bcseRate => throw _privateConstructorUsedError;

  @override
  double get buy => throw _privateConstructorUsedError;

  @override
  double get buyDiff => throw _privateConstructorUsedError;

  @override
  String get currencyCode => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get namePlural => throw _privateConstructorUsedError;

  @override
  String get namePluralShort => throw _privateConstructorUsedError;

  @override
  double get nb => throw _privateConstructorUsedError;

  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate => throw _privateConstructorUsedError;

  @override
  double get nbDiff => throw _privateConstructorUsedError;

  @override
  double get sell => throw _privateConstructorUsedError;

  @override
  double get sellDiff => throw _privateConstructorUsedError;

  @override
  bool get visible => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ExchangeRateDTOCopyWith<_ExchangeRateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
