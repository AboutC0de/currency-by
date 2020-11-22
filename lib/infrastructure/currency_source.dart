import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../domain/exchange_rate/exchange_rate.dart';
import '../generated/l10n.dart';
import '../utils/constants.dart';

enum CurrencySource { nb, bcse, buy, sell }

extension CurrencySourceExtension on CurrencySource {
  String getTranslation(BuildContext context) {
    switch (this) {
      case CurrencySource.nb:
        return S.of(context).nb;
      case CurrencySource.bcse:
        return S.of(context).bcse;

      case CurrencySource.buy:
        return S.of(context).buy;
      case CurrencySource.sell:
        return S.of(context).sell;
      default:
        return S.of(context).nb;
    }
  }

  double getValue(ExchangeRate exchangeRate) {
    switch (this) {
      case CurrencySource.nb:
        return exchangeRate.nb;
      case CurrencySource.bcse:
        return exchangeRate.bcseRate;

      case CurrencySource.buy:
        return exchangeRate.buy;
      case CurrencySource.sell:
        return exchangeRate.sell;
      default:
        return exchangeRate.nb;
    }
  }

  double getDiffValue(ExchangeRate exchangeRate) {
    switch (this) {
      case CurrencySource.bcse:
        return exchangeRate.bcseDiff;
      case CurrencySource.buy:
        return exchangeRate.buyDiff;
      case CurrencySource.sell:
        return exchangeRate.sellDiff;
      case CurrencySource.nb:
      default:
        return exchangeRate.nbDiff;
    }
  }

  String getDiff(ExchangeRate exchangeRate) {
    final diff = getDiffValue(exchangeRate);
    final sign = diff > 0 ? '+' : '';
    return sign + diff.toStringAsFixed(4);
  }

  String getDate(ExchangeRate exchangeRate) {
    var res = DateTime.now();
    switch (this) {
      case CurrencySource.buy:
      case CurrencySource.sell:
        res = DateTime.now();
        break;
      case CurrencySource.nb:
        res = exchangeRate.nbDate;
        break;
      case CurrencySource.bcse:
        res = exchangeRate.bcseDate;
        break;

      default:
        res = exchangeRate.nbDate;
        break;
    }
    return res != null ? DateFormat('dd MMM').format(res) : '-';
  }

  Color _getDiffColor(double diff) {
    return diff == 0
        ? greyColor
        : diff > 0
            ? greenColor
            : redColor;
  }

  Color getColor(ExchangeRate exchangeRate) {
    final diff = getDiffValue(exchangeRate);
    return _getDiffColor(diff);
  }

  charts.Color getChartColor(ExchangeRate exchangeRate) {
    final color = _getDiffColor(exchangeRate.nbDiff);
    return charts.Color(
      r: color.red,
      g: color.green,
      b: color.blue,
      a: color.alpha,
    );
  }
}
