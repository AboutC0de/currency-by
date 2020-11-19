import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../domain/exchange_rate/exchange_rate.dart';
import '../generated/l10n.dart';

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

  double getDiff(ExchangeRate exchangeRate) {
    switch (this) {
      case CurrencySource.nb:
        return exchangeRate.nbDiff;
      case CurrencySource.bcse:
        return exchangeRate.bcseDiff;

      case CurrencySource.buy:
        return exchangeRate.buyDiff;
      case CurrencySource.sell:
        return exchangeRate.sellDiff;
      default:
        return exchangeRate.nbDiff;
    }
  }

  DateTime getDate(ExchangeRate exchangeRate) {
    switch (this) {
      case CurrencySource.buy:
      case CurrencySource.sell:
        return DateTime.now();
      case CurrencySource.nb:
        return exchangeRate.nbDate;
      case CurrencySource.bcse:
        return exchangeRate.bcseDate;

      default:
        return exchangeRate.nbDate;
    }
  }
}

class ExchangeRateWidget extends StatefulWidget {
  final ExchangeRate _exchangeRate;

  const ExchangeRateWidget({Key key, ExchangeRate exchangeRate})
      : _exchangeRate = exchangeRate,
        super(key: key);

  @override
  _ExchangeRateWidgetState createState() => _ExchangeRateWidgetState();
}

class _ExchangeRateWidgetState extends State<ExchangeRateWidget> {
  CurrencySource _currencySource = CurrencySource.nb;

  @override
  Widget build(BuildContext context) {
    final exchangeRate = widget._exchangeRate;
    final date = _currencySource.getDate(exchangeRate);
    final formattedDate =
        date != null ? DateFormat('dd MMM').format(date) : '-';
    return GestureDetector(
      onTap: () {
        final index = CurrencySource.values
            .indexWhere((element) => element == _currencySource);
        setState(() {
          _currencySource = CurrencySource.values.length - 1 == index
              ? CurrencySource.values[0]
              : CurrencySource.values[index + 1];
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '${_currencySource.getTranslation(context)}: $formattedDate',
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 7,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(width: 1),
              Text(
                _currencySource.getValue(exchangeRate).toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          _CurrencyChanges(
            diff: _currencySource.getDiff(exchangeRate),
          ),
        ],
      ),
    );
  }
}

class _CurrencyChanges extends StatelessWidget {
  final double diff;

  const _CurrencyChanges({
    Key key,
    this.diff,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sign = diff > 0 ? '+' : '';
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 50,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(2.0),
            ),
            color: diff == 0
                ? Colors.grey
                : diff < 0
                    ? Colors.green
                    : Colors.red,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              sign + diff.toStringAsFixed(4),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }
}
