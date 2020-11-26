import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/i_exchange_rate_repository.dart';
import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';

part 'currency_exchange_rate_bloc.freezed.dart';
part 'currency_exchange_rate_state.dart';

@injectable
class CurrencyExchangeRateBloc extends Cubit<CurrencyExchangeRateState> {
  final IExchangeRateRepository _exchangeRateRepository;

  List<OneDayExchangeRate> _currencyExchangeRates;

  CurrencyExchangeRateBloc(this._exchangeRateRepository)
      : super(const CurrencyExchangeRateState.initial());

  Future<void> getCurrencyExchangeRates(String currency) async {
    emit(const CurrencyExchangeRateState.loading());
    _currencyExchangeRates = await _exchangeRateRepository
        .getOneYearExchangeRateByCurrency(currency);
    emit(const CurrencyExchangeRateState.loaded());
  }

  List<OneDayExchangeRate> get currencyExchangeRates => _currencyExchangeRates;
}
