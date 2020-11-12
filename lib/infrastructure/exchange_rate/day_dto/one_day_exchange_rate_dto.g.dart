// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_day_exchange_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneDayExchangeRateDTO _$_$_OneDayExchangeRateDTOFromJson(
    Map<String, dynamic> json) {
  return _$_OneDayExchangeRateDTO(
    nb: (json['nb'] as num)?.toDouble(),
    nbDate: stringToDateTime(json['nbDate'] as String),
  );
}

Map<String, dynamic> _$_$_OneDayExchangeRateDTOToJson(
        _$_OneDayExchangeRateDTO instance) =>
    <String, dynamic>{
      'nb': instance.nb,
      'nbDate': dateTimeToString(instance.nbDate),
    };
