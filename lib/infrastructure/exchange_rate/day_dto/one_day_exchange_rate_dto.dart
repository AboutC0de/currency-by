import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../../utils/date_utils.dart';

part 'one_day_exchange_rate_dto.freezed.dart';
part 'one_day_exchange_rate_dto.g.dart';

@freezed
abstract class OneDayExchangeRateDTO implements _$OneDayExchangeRateDTO {
  const OneDayExchangeRateDTO._();

  const factory OneDayExchangeRateDTO({
    required double nb,
    @JsonKey(
      fromJson: stringToDateTime,
      toJson: dateTimeToString,
    )
        required DateTime nbDate,
  }) = _OneDayExchangeRateDTO;

  factory OneDayExchangeRateDTO.fromDomain(
      OneDayExchangeRate oneDayExchangeRate) {
    return OneDayExchangeRateDTO(
      nb: oneDayExchangeRate.nb,
      nbDate: oneDayExchangeRate.nbDate,
    );
  }

  OneDayExchangeRate toDomain() {
    return OneDayExchangeRate(
      nb: nb,
      nbDate: nbDate,
    );
  }

  factory OneDayExchangeRateDTO.fromJson(Map<String, dynamic> json) =>
      _$OneDayExchangeRateDTOFromJson(json);

  factory OneDayExchangeRateDTO.fromFirestore(DocumentSnapshot doc) =>
      OneDayExchangeRateDTO.fromJson(doc.data()!);
}
