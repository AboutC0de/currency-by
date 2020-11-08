// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeRateDTO _$_$_ExchangeRateDTOFromJson(Map<String, dynamic> json) {
  return _$_ExchangeRateDTO(
    amount: (json['amount'] as num)?.toDouble(),
    bcseDate: ExchangeRateDTO._stringToDateTime(json['bcseDate'] as String),
    bcseDiff: (json['bcseDiff'] as num)?.toDouble(),
    bcseRate: (json['bcseRate'] as num)?.toDouble(),
    buy: (json['buy'] as num)?.toDouble(),
    buyDiff: (json['buyDiff'] as num)?.toDouble(),
    currencyCode: json['currencyCode'] as String,
    name: json['name'] as String,
    namePlural: json['namePlural'] as String,
    namePluralShort: json['namePluralShort'] as String,
    nb: (json['nb'] as num)?.toDouble(),
    nbDate: ExchangeRateDTO._stringToDateTime(json['nbDate'] as String),
    nbDiff: (json['nbDiff'] as num)?.toDouble(),
    sell: (json['sell'] as num)?.toDouble(),
    sellDiff: (json['sellDiff'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_ExchangeRateDTOToJson(_$_ExchangeRateDTO instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bcseDate': ExchangeRateDTO._dateTimeToString(instance.bcseDate),
      'bcseDiff': instance.bcseDiff,
      'bcseRate': instance.bcseRate,
      'buy': instance.buy,
      'buyDiff': instance.buyDiff,
      'currencyCode': instance.currencyCode,
      'name': instance.name,
      'namePlural': instance.namePlural,
      'namePluralShort': instance.namePluralShort,
      'nb': instance.nb,
      'nbDate': ExchangeRateDTO._dateTimeToString(instance.nbDate),
      'nbDiff': instance.nbDiff,
      'sell': instance.sell,
      'sellDiff': instance.sellDiff,
    };
