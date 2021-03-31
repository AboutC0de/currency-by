// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/chart/chart_cubit.dart' as _i3;
import 'application/exchange_rate/exchange_rate_bloc.dart' as _i7;
import 'domain/exchange_rate/i_exchange_rate_repository.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i8;
import 'infrastructure/exchange_rate/exchange_rate_repository.dart'
as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.ChartCubit>(() => _i3.ChartCubit());
  gh.lazySingleton<_i4.FirebaseFirestore>(
          () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.IExchangeRateRepository>(
          () => _i6.ExchangeRateRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i7.ExchangeRateBloc>(
          () => _i7.ExchangeRateBloc(get<_i5.IExchangeRateRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i8.FirebaseInjectableModule {}
