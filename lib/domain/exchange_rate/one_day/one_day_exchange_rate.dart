import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_day_exchange_rate.freezed.dart';

@freezed
abstract class OneDayExchangeRate implements _$OneDayExchangeRate {
  const OneDayExchangeRate._();

  const factory OneDayExchangeRate({
    double nb,
    DateTime nbDate,
  }) = _OneDayExchangeRate;
}
