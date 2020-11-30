import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../utils/constants.dart';
import 'currency_info.dart';
import 'exchange_rate_widget.dart';
import 'widgets/chart_with_gradient.dart';

class OneDayExchangeRateWidget extends StatefulWidget {
  final ExchangeRate _exchangeRate;

  const OneDayExchangeRateWidget({Key key, ExchangeRate exchangeRate})
      : _exchangeRate = exchangeRate,
        super(key: key);

  @override
  _OneDayExchangeRateWidgetState createState() =>
      _OneDayExchangeRateWidgetState();
}

class _OneDayExchangeRateWidgetState extends State<OneDayExchangeRateWidget> {
  CurrencySource _currencySource = CurrencySource.nb;

  @override
  Widget build(BuildContext context) {
    final exchangeRate = widget._exchangeRate;
    return GestureDetector(
      onTap: () {
        showCurrencyInfo(
          context,
          exchangeRate,
          _currencySource,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exchangeRate.currencyCode,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  exchangeRate.currencyFullName,
                  style: const TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: SizedBox(
              height: 50,
              child: _ExchangeRateChart(
                exchangeRate: exchangeRate,
                currencySource: _currencySource,
              ),
            ),
          ),
          SizedBox(
            width: 70,
            child: ExchangeRateWidget(
              diff: _currencySource.getDiff(exchangeRate),
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

  const _ExchangeRateChart({
    Key key,
    @required this.exchangeRate,
    @required this.currencySource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    final exchangeRates = bloc.weekExchangeRates[exchangeRate.currencyCode];
    final series = [
      charts.Series<OneDayExchangeRate, DateTime>(
        id: 'currency',
        colorFn: (_, __) => currencySource.getChartColor(exchangeRate),
        domainFn: (OneDayExchangeRate exchangeRate, _) => exchangeRate.nbDate,
        measureFn: (OneDayExchangeRate exchangeRate, _) =>
            exchangeRate.nb * 10000,
        data: exchangeRates,
        strokeWidthPxFn: (_, __) => 1.5,
      ),
    ];

    final behaviors = [
      charts.LinePointHighlighter(
        showHorizontalFollowLine:
            charts.LinePointHighlighterFollowLineType.none,
        showVerticalFollowLine: charts.LinePointHighlighterFollowLineType.none,
        drawFollowLinesAcrossChart: false,
        defaultRadiusPx: 0,
      )
    ];

    return ChartWithGradient(
      color: currencySource.getChartColor(exchangeRate),
      gradientColor: currencySource.getColor(exchangeRate),
      behaviors: behaviors,
      series: series,
    );
  }
}
