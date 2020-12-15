import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/tracking.dart';

part 'chart_cubit.freezed.dart';
part 'chart_cubit_state.dart';

@injectable
class ChartCubit extends Cubit<ChartCubitState> {
  ChartCubit() : super(const ChartCubitState.preview());

  void onTracking(TrackingArgs tracking) {
    emit(ChartCubitState.tracking(tracking));
  }

  void onPreview() {
    emit(const ChartCubitState.preview());
  }
}
