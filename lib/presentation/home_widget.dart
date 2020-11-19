import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../generated/l10n.dart';
import '../utils/constants.dart';
import 'currency_info.dart';
import 'exchange_rate_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).appTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('dd MMMM').format(DateTime.now()).toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: bloc.state.when(
        initial: () => const Text('initial'),
        loaded: () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Theme.of(context).accentColor,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return _OneDayExchangeRate(
                exchangeRate: bloc.exchangeRates[index],
              );
            },
            itemCount: bloc.exchangeRates.length,
            separatorBuilder: (BuildContext context, int index) {
              return Column(
                children: const [
                  Divider(color: Colors.grey),
                ],
              );
            },
          ),
        ),
        loading: () => Container(
          color: Theme.of(context).accentColor,
          child: Center(
            child: Theme(
              data: Theme.of(context).copyWith(
                accentColor: Colors.white,
              ),
              child: const CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}

class _OneDayExchangeRate extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _OneDayExchangeRate({Key key, this.exchangeRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ExchangeRateWidget(
              exchangeRate: exchangeRate,
            ),
          ),
        ],
      ),
    );
  }
}

class _ExchangeRateChart extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _ExchangeRateChart({Key key, this.exchangeRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();

    final exchangeRates = bloc.weekExchangeRates[exchangeRate.currencyCode];
    final series = [
      charts.Series<OneDayExchangeRate, DateTime>(
        id: 'currency',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
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
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                greenColor,
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
