import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/exchange_rate.dart';
import '../../domain/exchange_rate/i_exchange_rate_repository.dart';

part 'exchange_rate_bloc.freezed.dart';
part 'exchange_rate_state.dart';

@injectable
class ExchangeRateBloc extends Cubit<ExchangeRateState> {
  final IExchangeRateRepository _exchangeRateRepository;

  List<ExchangeRate> _exchangeRates;

  ExchangeRateBloc(this._exchangeRateRepository)
      : super(const ExchangeRateState.initial()) {
    _getTodayExchangeRates();
  }

  Future<void> _getTodayExchangeRates() async {
    emit(const ExchangeRateState.loading());
    _exchangeRates = await _exchangeRateRepository.getTodayExchangeRates();
    emit(const ExchangeRateState.loaded());
  }

  Future<void> _getOneWeekExchangeRates() async {}

  List<ExchangeRate> get exchangeRates => _exchangeRates;
}
