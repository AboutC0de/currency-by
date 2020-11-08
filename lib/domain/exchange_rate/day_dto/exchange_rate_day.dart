import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_day.freezed.dart';

@freezed
abstract class ExchangeRateDay implements _$ExchangeRateDay {
  const ExchangeRateDay._();

  const factory ExchangeRateDay({
    String id,
  }) = _ExchangeRateDay;
}
