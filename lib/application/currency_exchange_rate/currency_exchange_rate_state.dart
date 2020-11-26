part of 'currency_exchange_rate_bloc.dart';

@freezed
abstract class CurrencyExchangeRateState with _$CurrencyExchangeRateState {
  const factory CurrencyExchangeRateState.initial() = Initial;

  const factory CurrencyExchangeRateState.loading() = Loading;

  const factory CurrencyExchangeRateState.loaded() = Loaded;
}
