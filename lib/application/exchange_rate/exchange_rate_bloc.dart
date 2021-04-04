import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/exchange_rate.dart';
import '../../domain/exchange_rate/i_exchange_rate_repository.dart';
import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';

part 'exchange_rate_bloc.freezed.dart';
part 'exchange_rate_state.dart';

@injectable
class ExchangeRateBloc extends Cubit<ExchangeRateState> {
  final IExchangeRateRepository _exchangeRateRepository;

  late List<ExchangeRate> _exchangeRates;
  late Map<String, List<OneDayExchangeRate>> _monthExchangeRates;

  late StreamSubscription<dynamic> _currencyChangesSubscription;

  ExchangeRateBloc(this._exchangeRateRepository)
      : super(const ExchangeRateState.initial()) {
    _getAllData();
    _subscribeOnCurrencyChanges();
  }

  Future<void> _getAllData() async {
    emit(const ExchangeRateState.loading());
    await _getCurrentMonthExchangeRates();
    emit(ExchangeRateState.loaded(_exchangeRates));
  }

  Future<void> _getCurrentMonthExchangeRates() async {
    _monthExchangeRates =
        await _exchangeRateRepository.getCurrentMonthExchangeRates();
  }

  void _subscribeOnCurrencyChanges() {
    _currencyChangesSubscription =
        _exchangeRateRepository.subscribeOnCurrencyChanges().listen(
      (exchangeRates) {
        _exchangeRates = exchangeRates.where((rate) => rate.visible).toList();
        if (state != const ExchangeRateState.loading()) {
          emit(ExchangeRateState.loaded(_exchangeRates));
        }
      },
    );
  }

  Map<String, List<OneDayExchangeRate>> get monthExchangeRates =>
      _monthExchangeRates;

  @override
  Future<void> close() async {
    await _currencyChangesSubscription.cancel();
    return super.close();
  }
}
