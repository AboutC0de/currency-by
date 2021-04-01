import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../utils/constants.dart';
import 'exchange_rate_widget.dart';
import 'widgets/currency_chart.dart';

class OneDayExchangeRateWidget extends StatefulWidget {
  final ExchangeRate _exchangeRate;

  const OneDayExchangeRateWidget(
      {required Key key, required ExchangeRate exchangeRate})
      : _exchangeRate = exchangeRate,
        super(key: key);

  @override
  _OneDayExchangeRateWidgetState createState() =>
      _OneDayExchangeRateWidgetState();
}

class _OneDayExchangeRateWidgetState extends State<OneDayExchangeRateWidget> {
  CurrencySource _currencySource = CurrencySource.nb;

  void onTap() {
    // Router.navigate(context, () { })
  }

  @override
  Widget build(BuildContext context) {
    final exchangeRate = widget._exchangeRate;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exchangeRate.currencyCode,
                  style: const TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  exchangeRate.currencyFullName,
                  style: const TextStyle(
                    color: greyColor,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 50,
                child: _ExchangeRateChart(
                  exchangeRate: exchangeRate,
                  currencySource: _currencySource,
                  onTap: onTap,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ExchangeRateWidget(
              diff: _currencySource.getDiffWithSign(exchangeRate),
              color: _currencySource.getColor(exchangeRate),
              label:
              '${_currencySource.getTranslation(context)}: ${_currencySource.getDate(exchangeRate)}',
              value: _currencySource.getValue(exchangeRate).toStringAsFixed(4),
              onSourceChange: onSourceChange,
            ),
          ),
        ],
      ),
    );
  }

  void onSourceChange() {
    final index = CurrencySource.values
        .indexWhere((element) => element == _currencySource);
    setState(() {
      _currencySource = CurrencySource.values.length - 1 == index
          ? CurrencySource.values[0]
          : CurrencySource.values[index + 1];
    });
  }
}

class _ExchangeRateChart extends StatelessWidget {
  final ExchangeRate exchangeRate;
  final CurrencySource currencySource;
  final VoidCallback onTap;

  const _ExchangeRateChart({
    Key key,
    @required this.exchangeRate,
    @required this.currencySource,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    final exchangeRates = bloc.monthExchangeRates[exchangeRate.currencyCode];

    return CurrencyChart(
      color: currencySource.getDiffColor(exchangeRate.nbDiff),
      exchangeRates: exchangeRates,
      onChartTapped: onTap,
    );
  }
}
