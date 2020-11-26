// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/currency_exchange_rate/currency_exchange_rate_bloc.dart';
import 'application/exchange_rate/exchange_rate_bloc.dart';
import 'infrastructure/exchange_rate/exchange_rate_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/exchange_rate/i_exchange_rate_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<IExchangeRateRepository>(
      () => ExchangeRateRepository(get<FirebaseFirestore>()));
  gh.factory<CurrencyExchangeRateBloc>(
      () => CurrencyExchangeRateBloc(get<IExchangeRateRepository>()));
  gh.factory<ExchangeRateBloc>(
      () => ExchangeRateBloc(get<IExchangeRateRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
