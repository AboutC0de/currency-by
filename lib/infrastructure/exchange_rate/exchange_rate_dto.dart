import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/exchange_rate/exchange_rate.dart';

part 'exchange_rate_dto.freezed.dart';
part 'exchange_rate_dto.g.dart';

@freezed
abstract class ExchangeRateDTO implements _$ExchangeRateDTO {
  const ExchangeRateDTO._();

  const factory ExchangeRateDTO({
    @required double amount,
    @JsonKey(fromJson: ExchangeRateDTO._stringToDateTime, toJson: ExchangeRateDTO._dateTimeToString)
        DateTime bcseDate,
    @required double bcseDiff,
    @required double bcseRate,
    @required double buy,
    @required double buyDiff,
    @required String currencyCode,
    @required String name,
    @required String namePlural,
    @required String namePluralShort,
    @required double nb,
    @JsonKey(fromJson: ExchangeRateDTO._stringToDateTime, toJson: ExchangeRateDTO._dateTimeToString)
        DateTime nbDate,
    @required double nbDiff,
    @required double sell,
    @required double sellDiff,
  }) = _ExchangeRateDTO;

  factory ExchangeRateDTO.fromDomain(ExchangeRate exchangeRate) {
    return ExchangeRateDTO(
      amount: exchangeRate.amount,
      bcseDate: exchangeRate.bcseDate,
      bcseDiff: exchangeRate.bcseDiff,
      bcseRate: exchangeRate.bcseRate,
      buy: exchangeRate.buy,
      buyDiff: exchangeRate.buyDiff,
      currencyCode: exchangeRate.currencyCode,
      name: exchangeRate.name,
      namePlural: exchangeRate.namePlural,
      namePluralShort: exchangeRate.namePluralShort,
      nb: exchangeRate.nb,
      nbDate: exchangeRate.nbDate,
      nbDiff: exchangeRate.nbDiff,
      sell: exchangeRate.sell,
      sellDiff: exchangeRate.sellDiff,
    );
  }

  ExchangeRate toDomain() {
    return ExchangeRate(
      amount: amount,
      bcseDiff: bcseDiff,
      bcseRate: bcseRate,
      bcseDate: bcseDate,
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
    );
  }

  factory ExchangeRateDTO.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateDTOFromJson(json);

  factory ExchangeRateDTO.fromFirestore(DocumentSnapshot doc) =>
      ExchangeRateDTO.fromJson(doc.data());

  static DateTime _stringToDateTime(String date) =>
      date.isNotEmpty ? DateTime.parse(date) : null;

  static String _dateTimeToString(DateTime date) => '';
}
