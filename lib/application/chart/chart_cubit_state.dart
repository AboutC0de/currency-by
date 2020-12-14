part of 'chart_cubit.dart';

@freezed
abstract class ChartState with _$ChartState {
  const factory ChartState.initial() = Initial;
}
