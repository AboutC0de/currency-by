import 'exchange_rate.dart';
import 'one_day/one_day_exchange_rate.dart';

abstract class IExchangeRateRepository {
  Future<List<ExchangeRate>> getTodayExchangeRates();

  Future<Map<String, List<OneDayExchangeRate>>> getCurrentMonthExchangeRates();

  Future<List<OneDayExchangeRate>> getOneYearExchangeRateByCurrency(
      String currency);

  Stream<List<ExchangeRate>> subscribeOnCurrencyChanges();
}
