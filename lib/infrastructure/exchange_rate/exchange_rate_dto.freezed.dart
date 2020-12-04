// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exchange_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ExchangeRateDTO _$ExchangeRateDTOFromJson(Map<String, dynamic> json) {
  return _ExchangeRateDTO.fromJson(json);
}

/// @nodoc
class _$ExchangeRateDTOTearOff {
  const _$ExchangeRateDTOTearOff();

// ignore: unused_element
  _ExchangeRateDTO call(
      {@required
          double amount,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime bcseDate,
      @required
          double bcseDiff,
      @required
          double bcseRate,
      @required
          double buy,
      @required
          double buyDiff,
      @required
          String currencyCode,
      @required
          String name,
      @required
          String namePlural,
      @required
          String namePluralShort,
      @required
          double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate,
      @required
          double nbDiff,
      @required
          double sell,
      @required
          double sellDiff,
      bool visible = true}) {
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

// ignore: unused_element
  ExchangeRateDTO fromJson(Map<String, Object> json) {
    return ExchangeRateDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExchangeRateDTO = _$ExchangeRateDTOTearOff();

/// @nodoc
mixin _$ExchangeRateDTO {
  double get amount;
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get bcseDate;
  double get bcseDiff;
  double get bcseRate;
  double get buy;
  double get buyDiff;
  String get currencyCode;
  String get name;
  String get namePlural;
  String get namePluralShort;
  double get nb;
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate;
  double get nbDiff;
  double get sell;
  double get sellDiff;
  bool get visible;

  Map<String, dynamic> toJson();
  $ExchangeRateDTOCopyWith<ExchangeRateDTO> get copyWith;
}

/// @nodoc
abstract class $ExchangeRateDTOCopyWith<$Res> {
  factory $ExchangeRateDTOCopyWith(
          ExchangeRateDTO value, $Res Function(ExchangeRateDTO) then) =
      _$ExchangeRateDTOCopyWithImpl<$Res>;
  $Res call(
      {double amount,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime bcseDate,
      double bcseDiff,
      double bcseRate,
      double buy,
      double buyDiff,
      String currencyCode,
      String name,
      String namePlural,
      String namePluralShort,
      double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate,
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
    Object amount = freezed,
    Object bcseDate = freezed,
    Object bcseDiff = freezed,
    Object bcseRate = freezed,
    Object buy = freezed,
    Object buyDiff = freezed,
    Object currencyCode = freezed,
    Object name = freezed,
    Object namePlural = freezed,
    Object namePluralShort = freezed,
    Object nb = freezed,
    Object nbDate = freezed,
    Object nbDiff = freezed,
    Object sell = freezed,
    Object sellDiff = freezed,
    Object visible = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as double,
      bcseDate: bcseDate == freezed ? _value.bcseDate : bcseDate as DateTime,
      bcseDiff: bcseDiff == freezed ? _value.bcseDiff : bcseDiff as double,
      bcseRate: bcseRate == freezed ? _value.bcseRate : bcseRate as double,
      buy: buy == freezed ? _value.buy : buy as double,
      buyDiff: buyDiff == freezed ? _value.buyDiff : buyDiff as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode as String,
      name: name == freezed ? _value.name : name as String,
      namePlural:
          namePlural == freezed ? _value.namePlural : namePlural as String,
      namePluralShort: namePluralShort == freezed
          ? _value.namePluralShort
          : namePluralShort as String,
      nb: nb == freezed ? _value.nb : nb as double,
      nbDate: nbDate == freezed ? _value.nbDate : nbDate as DateTime,
      nbDiff: nbDiff == freezed ? _value.nbDiff : nbDiff as double,
      sell: sell == freezed ? _value.sell : sell as double,
      sellDiff: sellDiff == freezed ? _value.sellDiff : sellDiff as double,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeRateDTOCopyWith<$Res>
    implements $ExchangeRateDTOCopyWith<$Res> {
  factory _$ExchangeRateDTOCopyWith(
          _ExchangeRateDTO value, $Res Function(_ExchangeRateDTO) then) =
      __$ExchangeRateDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {double amount,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime bcseDate,
      double bcseDiff,
      double bcseRate,
      double buy,
      double buyDiff,
      String currencyCode,
      String name,
      String namePlural,
      String namePluralShort,
      double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate,
      double nbDiff,
      double sell,
      double sellDiff,
      bool visible});
}

/// @nodoc
class __$ExchangeRateDTOCopyWithImpl<$Res>
    extends _$ExchangeRateDTOCopyWithImpl<$Res>
    implements _$ExchangeRateDTOCopyWith<$Res> {
  __$ExchangeRateDTOCopyWithImpl(
      _ExchangeRateDTO _value, $Res Function(_ExchangeRateDTO) _then)
      : super(_value, (v) => _then(v as _ExchangeRateDTO));

  @override
  _ExchangeRateDTO get _value => super._value as _ExchangeRateDTO;

  @override
  $Res call({
    Object amount = freezed,
    Object bcseDate = freezed,
    Object bcseDiff = freezed,
    Object bcseRate = freezed,
    Object buy = freezed,
    Object buyDiff = freezed,
    Object currencyCode = freezed,
    Object name = freezed,
    Object namePlural = freezed,
    Object namePluralShort = freezed,
    Object nb = freezed,
    Object nbDate = freezed,
    Object nbDiff = freezed,
    Object sell = freezed,
    Object sellDiff = freezed,
    Object visible = freezed,
  }) {
    return _then(_ExchangeRateDTO(
      amount: amount == freezed ? _value.amount : amount as double,
      bcseDate: bcseDate == freezed ? _value.bcseDate : bcseDate as DateTime,
      bcseDiff: bcseDiff == freezed ? _value.bcseDiff : bcseDiff as double,
      bcseRate: bcseRate == freezed ? _value.bcseRate : bcseRate as double,
      buy: buy == freezed ? _value.buy : buy as double,
      buyDiff: buyDiff == freezed ? _value.buyDiff : buyDiff as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode as String,
      name: name == freezed ? _value.name : name as String,
      namePlural:
          namePlural == freezed ? _value.namePlural : namePlural as String,
      namePluralShort: namePluralShort == freezed
          ? _value.namePluralShort
          : namePluralShort as String,
      nb: nb == freezed ? _value.nb : nb as double,
      nbDate: nbDate == freezed ? _value.nbDate : nbDate as DateTime,
      nbDiff: nbDiff == freezed ? _value.nbDiff : nbDiff as double,
      sell: sell == freezed ? _value.sell : sell as double,
      sellDiff: sellDiff == freezed ? _value.sellDiff : sellDiff as double,
      visible: visible == freezed ? _value.visible : visible as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExchangeRateDTO extends _ExchangeRateDTO {
  const _$_ExchangeRateDTO(
      {@required
          this.amount,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          this.bcseDate,
      @required
          this.bcseDiff,
      @required
          this.bcseRate,
      @required
          this.buy,
      @required
          this.buyDiff,
      @required
          this.currencyCode,
      @required
          this.name,
      @required
          this.namePlural,
      @required
          this.namePluralShort,
      @required
          this.nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          this.nbDate,
      @required
          this.nbDiff,
      @required
          this.sell,
      @required
          this.sellDiff,
      this.visible = true})
      : assert(amount != null),
        assert(bcseDiff != null),
        assert(bcseRate != null),
        assert(buy != null),
        assert(buyDiff != null),
        assert(currencyCode != null),
        assert(name != null),
        assert(namePlural != null),
        assert(namePluralShort != null),
        assert(nb != null),
        assert(nbDiff != null),
        assert(sell != null),
        assert(sellDiff != null),
        assert(visible != null),
        super._();

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
  @JsonKey(defaultValue: true)
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

  @override
  _$ExchangeRateDTOCopyWith<_ExchangeRateDTO> get copyWith =>
      __$ExchangeRateDTOCopyWithImpl<_ExchangeRateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExchangeRateDTOToJson(this);
  }
}

abstract class _ExchangeRateDTO extends ExchangeRateDTO {
  const _ExchangeRateDTO._() : super._();
  const factory _ExchangeRateDTO(
      {@required
          double amount,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime bcseDate,
      @required
          double bcseDiff,
      @required
          double bcseRate,
      @required
          double buy,
      @required
          double buyDiff,
      @required
          String currencyCode,
      @required
          String name,
      @required
          String namePlural,
      @required
          String namePluralShort,
      @required
          double nb,
      @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
          DateTime nbDate,
      @required
          double nbDiff,
      @required
          double sell,
      @required
          double sellDiff,
      bool visible}) = _$_ExchangeRateDTO;

  factory _ExchangeRateDTO.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateDTO.fromJson;

  @override
  double get amount;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get bcseDate;
  @override
  double get bcseDiff;
  @override
  double get bcseRate;
  @override
  double get buy;
  @override
  double get buyDiff;
  @override
  String get currencyCode;
  @override
  String get name;
  @override
  String get namePlural;
  @override
  String get namePluralShort;
  @override
  double get nb;
  @override
  @JsonKey(fromJson: stringToDateTime, toJson: dateTimeToString)
  DateTime get nbDate;
  @override
  double get nbDiff;
  @override
  double get sell;
  @override
  double get sellDiff;
  @override
  bool get visible;
  @override
  _$ExchangeRateDTOCopyWith<_ExchangeRateDTO> get copyWith;
}
