// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i4;

import '../../domain/exchange_rate/exchange_rate.dart' as _i5;
import '../../infrastructure/currency_source.dart' as _i6;
import '../currency_info.dart' as _i3;
import '../home_widget.dart' as _i2;

class Router extends _i1.RootStackRouter {
  Router();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeWidget.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomeWidget());
    },
    CurrencyInfoModal.name: (entry) {
      var args = entry.routeData.argsAs<CurrencyInfoModalArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.CurrencyInfoModal(
              key: args.key,
              exchangeRate: args.exchangeRate,
              source: args.source),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [
        _i1.RouteConfig(HomeWidget.name, path: '/'),
        _i1.RouteConfig(CurrencyInfoModal.name, path: '/currency-info-modal')
      ];
}

class HomeWidget extends _i1.PageRouteInfo {
  const HomeWidget() : super(name, path: '/');

  static const String name = 'HomeWidget';
}

class CurrencyInfoModal extends _i1.PageRouteInfo<CurrencyInfoModalArgs> {
  CurrencyInfoModal(
      {_i4.Key? key,
      required _i5.ExchangeRate exchangeRate,
      required _i6.CurrencySource source})
      : super(name,
            path: '/currency-info-modal',
            args: CurrencyInfoModalArgs(
                key: key, exchangeRate: exchangeRate, source: source));

  static const String name = 'CurrencyInfoModal';
}

class CurrencyInfoModalArgs {
  const CurrencyInfoModalArgs(
      {this.key, required this.exchangeRate, required this.source});

  final _i4.Key? key;

  final _i5.ExchangeRate exchangeRate;

  final _i6.CurrencySource source;
}
