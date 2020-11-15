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

  List<ExchangeRate> _exchangeRates;
  Map<String, List<OneDayExchangeRate>> _weekExchangeRates;

  ExchangeRateBloc(this._exchangeRateRepository)
      : super(const ExchangeRateState.initial()) {
    _getAllData();
  }

  Future<void> _getAllData() async {
    emit(const ExchangeRateState.loading());
    await _getTodayExchangeRates();
    await _getCurrentWeekExchangeRates();
    emit(const ExchangeRateState.loaded());
  }

  Future<void> _getTodayExchangeRates() async {
    _exchangeRates = await _exchangeRateRepository.getTodayExchangeRates();
  }

  Future<void> _getCurrentWeekExchangeRates() async {
    _weekExchangeRates =
        await _exchangeRateRepository.getCurrentWeekExchangeRates();
  }

  List<ExchangeRate> get exchangeRates => _exchangeRates;

  Map<String, List<OneDayExchangeRate>> get weekExchangeRates =>
      _weekExchangeRates;
}
