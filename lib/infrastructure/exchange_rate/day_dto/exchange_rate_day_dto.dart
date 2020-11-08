import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/exchange_rate/day_dto/exchange_rate_day.dart';

part 'exchange_rate_day_dto.freezed.dart';
part 'exchange_rate_day_dto.g.dart';

@freezed
abstract class ExchangeRateDayDTO implements _$ExchangeRateDayDTO {
  const ExchangeRateDayDTO._();

  const factory ExchangeRateDayDTO() = _ExchangeRateDayDTO;

  factory ExchangeRateDayDTO.fromDomain(ExchangeRateDay exchangeRateDay) {
    return const ExchangeRateDayDTO();
  }

  ExchangeRateDay toDomain() {
    return const ExchangeRateDay();
  }

  factory ExchangeRateDayDTO.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateDayDTOFromJson(json);

  factory ExchangeRateDayDTO.fromFirestore(DocumentSnapshot doc) =>
      ExchangeRateDayDTO.fromJson(doc.data());
}
