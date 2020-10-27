import 'package:freezed_annotation/freezed_annotation.dart';

import 'bid.dart';

part 'exchange_rate.freezed.dart';

@freezed
abstract class ExchangeRate implements _$ExchangeRate {
  const ExchangeRate._();

  const factory ExchangeRate({
    @required String currencyName,
    @required List<Bid> bids,
  }) = _ExchangeRate;
}
