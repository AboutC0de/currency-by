import '../../infrastructure/exchange_rate/exchange_rate_dto.dart';

abstract class IExchangeRateRepository {
  Future<List<ExchangeRateDTO>> getTodayExchangeRates();
}
