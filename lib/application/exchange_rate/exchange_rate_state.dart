part of 'exchange_rate_bloc.dart';

@freezed
abstract class ExchangeRateState with _$ExchangeRateState {
  const factory ExchangeRateState.initial() = Initial;

  const factory ExchangeRateState.loading() = Loading;

  const factory ExchangeRateState.loaded() = Loaded;
}
