import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/exchange_rate.dart';
import '../../domain/exchange_rate/i_exchange_rate_repository.dart';
import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import 'day_dto/one_day_exchange_rate_dto.dart';
import 'exchange_rate_dto.dart';

const String oneDayCollection = '1D';
const String monthAllCurrenciesCollection = 'monthAllCurrency';
const String oneYearCollection = '1Y';

@LazySingleton(as: IExchangeRateRepository)
class ExchangeRateRepository implements IExchangeRateRepository {
  final FirebaseFirestore _firestore;

  ExchangeRateRepository(this._firestore);

  @override
  Future<List<ExchangeRate>> getTodayExchangeRates() async {
    final documentSnapshot = await _firestore
        .collection(oneDayCollection)
        .doc('exchangeRates')
        .get();
    return documentSnapshot
        .data()['exchangeRates']
        .map((rate) =>
            ExchangeRateDTO.fromJson(rate as Map<String, dynamic>).toDomain())
        .cast<ExchangeRate>()
        .toList() as List<ExchangeRate>;
  }

  @override
  Future<Map<String, List<OneDayExchangeRate>>>
      getCurrentWeekExchangeRates() async {
    final documentSnapshot = await _firestore
        .collection(monthAllCurrenciesCollection)
        .doc('exchangeRates')
        .get();
    return documentSnapshot
        .data()
        .map((currency, value) => MapEntry(
              currency,
              value
                  .map((v) =>
                      OneDayExchangeRateDTO.fromJson(v as Map<String, dynamic>)
                          .toDomain())
                  .cast<OneDayExchangeRate>()
                  .toList(),
            ))
        .cast<String, List<OneDayExchangeRate>>();
  }

  @override
  Future<List<OneDayExchangeRate>> getOneYearExchangeRateByCurrency(
      String currency) async {
    final documentSnapshot =
        await _firestore.collection(oneYearCollection).doc(currency).get();
    return documentSnapshot
        .data()['exchangeRates']
        .map((rate) =>
            OneDayExchangeRateDTO.fromJson(rate as Map<String, dynamic>)
                .toDomain())
        .cast<OneDayExchangeRate>()
        .toList() as List<OneDayExchangeRate>;
  }
}
