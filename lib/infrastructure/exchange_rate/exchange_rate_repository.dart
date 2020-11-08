import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../domain/exchange_rate/exchange_rate.dart';
import '../../domain/exchange_rate/i_exchange_rate_repository.dart';
import 'exchange_rate_dto.dart';

const String oneDayCollection = '1D';

@LazySingleton(as: IExchangeRateRepository)
class ExchangeRateRepository implements IExchangeRateRepository {
  final FirebaseFirestore _firestore;

  ExchangeRateRepository(this._firestore);

  @override
  Future<List<ExchangeRate>> getTodayExchangeRates() async {
    final exchangeRates = await _firestore
        .collection(oneDayCollection)
        .doc('exchangeRates')
        .get();
    final result = exchangeRates
        .data()
        .values
        .toList()[0]
        .map((rate) =>
            ExchangeRateDTO.fromJson(rate as Map<String, dynamic>).toDomain())
        .cast<ExchangeRate>()
        .toList();
    return result as List<ExchangeRate>;
  }
}
