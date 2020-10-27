import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bid.freezed.dart';

@freezed
abstract class Bid implements _$Bid {
  const Bid._();

  const factory Bid({
    @required double bidPrice,
    @required Timestamp date,
  }) = _Bid;
}
