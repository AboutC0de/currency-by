import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';

import 'application/chart/chart_cubit.dart';
import 'application/exchange_rate/exchange_rate_bloc.dart';
import 'generated/l10n.dart';
import 'injection.dart';
import 'presentation/routes/router.gr.dart' as generated_router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(CurrencyApp());
}

class CurrencyApp extends StatelessWidget {
  final _appRouter = generated_router.Router();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExchangeRateBloc>(
          create: (BuildContext context) => getIt<ExchangeRateBloc>(),
        ),
        BlocProvider(
          create: (BuildContext context) => getIt<ChartCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Currency BY',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
          accentColor: Colors.black,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
