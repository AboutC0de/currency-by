import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/i_exchange_rate_repository.dart';

part 'exchange_rate_bloc.freezed.dart';
part 'exchange_rate_state.dart';

@injectable
class ExchangeRateBloc extends Cubit<ExchangeRateState> {
  final IExchangeRateRepository _exchangeRateRepository;

  ExchangeRateBloc(this._exchangeRateRepository)
      : super(const ExchangeRateState.initial()) {
    _exchangeRateRepository.getTodayExchangeRates().then((value) => null);
  }
}
