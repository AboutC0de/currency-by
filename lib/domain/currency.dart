import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
abstract class Currency implements _$Currency {
  const Currency._();

  const factory Currency({
    @required String id,
  }) = _Currency;
}
