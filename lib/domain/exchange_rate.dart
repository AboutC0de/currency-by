import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';

@freezed
abstract class ExchangeRate implements _$ExchangeRate {
  const ExchangeRate._();

  const factory ExchangeRate({
    String id,
  }) = _ExchangeRate;
}
