part of 'chart_cubit.dart';

@freezed
abstract class ChartCubitState with _$ChartCubitState {
  const factory ChartCubitState.preview() = Preview;

  const factory ChartCubitState.tracking(TrackingArgs tracking) = Tracking;
}
