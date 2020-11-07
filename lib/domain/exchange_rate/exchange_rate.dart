import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';

@freezed
abstract class ExchangeRate implements _$ExchangeRate {
  const ExchangeRate._();

  const factory ExchangeRate({
    @required double amount,
    @required DateTime bcseDate,
    @required double bcseDiff,
    @required double bcseRate,
    @required double buy,
    @required double buyDiff,
    @required String currencyCode,
    @required String name,
    @required String namePlural,
    @required String namePluralShort,
    @required double nb,
    @required DateTime nbDate,
    @required double nbDiff,
    @required double sell,
    @required double sellDiff,
  }) = _ExchangeRate;
}
