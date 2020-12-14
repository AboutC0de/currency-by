import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_cubit.freezed.dart';
part 'chart_cubit_state.dart';

@injectable
class ChartCubit extends Cubit<ChartState> {
  ChartCubit(ChartState state) : super(state);
}
