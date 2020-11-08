import 'exchange_rate.dart';

abstract class IExchangeRateRepository {
  Future<List<ExchangeRate>> getTodayExchangeRates();
}
