import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import 'currency_info.dart';
import 'exchange_rate_widget.dart';

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
    final exchangeRateName = exchangeRate.amount != 1
        ? '${exchangeRate.amount.toInt()} ${exchangeRate.namePlural}'
        : exchangeRate.name;
    return GestureDetector(
      onTap: () {
        showCurrencyInfo(context, exchangeRate);
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
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  exchangeRateName,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
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
          Expanded(
            flex: 3,
            child: ExchangeRateWidget(
              diff: _currencySource.getDiff(exchangeRate),
              color: _currencySource.getColor(exchangeRate),
              label:
                  '${_currencySource.getTranslation(context)}: ${_currencySource.getDate(exchangeRate)}',
              value: _currencySource.getValue(exchangeRate).toString(),
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

    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                currencySource.getColor(exchangeRate),
                Colors.transparent,
              ],
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstIn,
          child: charts.TimeSeriesChart(
            series,
            defaultRenderer: charts.LineRendererConfig(
              areaOpacity: 0.2,
              includeArea: true,
              stacked: true,
            ),
            animate: false,
            primaryMeasureAxis: const charts.NumericAxisSpec(
              renderSpec: charts.NoneRenderSpec(),
              tickProviderSpec: charts.BasicNumericTickProviderSpec(
                zeroBound: false,
              ),
              showAxisLine: false,
            ),
            domainAxis: const charts.DateTimeAxisSpec(
              renderSpec: charts.NoneRenderSpec(),
              showAxisLine: false,
            ),
          ),
        ),
        charts.TimeSeriesChart(
          series,
          animate: false,
          primaryMeasureAxis: const charts.NumericAxisSpec(
            renderSpec: charts.NoneRenderSpec(),
            tickProviderSpec: charts.BasicNumericTickProviderSpec(
              zeroBound: false,
            ),
            showAxisLine: false,
          ),
          domainAxis: const charts.DateTimeAxisSpec(
            renderSpec: charts.NoneRenderSpec(),
            showAxisLine: false,
          ),
        ),
      ],
    );
  }
}
