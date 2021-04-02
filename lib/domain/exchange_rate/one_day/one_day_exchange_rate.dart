import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_day_exchange_rate.freezed.dart';

@freezed
abstract class OneDayExchangeRate implements _$OneDayExchangeRate {
  const OneDayExchangeRate._();

  const factory OneDayExchangeRate({
    required double nb,
    required DateTime nbDate,
  }) = _OneDayExchangeRate;
}
