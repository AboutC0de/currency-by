import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../generated/l10n.dart';

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
              // FlatButton(
              //   onPressed: () {},
              //   child: Text(
              //     S.of(context).edit,
              //     style: const TextStyle(color: Colors.lightBlue),
              //   ),
              // ),
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
        loading: () => const Text('loading'),
      ),
    );
  }
}

class _OneDayExchangeRate extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _OneDayExchangeRate({Key key, this.exchangeRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                exchangeRate.name,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 10,
          child: SizedBox(
            height: 50,
            child: _ExchangeRateChart(
              exchangeRate: exchangeRate,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 1),
                  Text(
                    exchangeRate.nb.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              _ExchangeRate(
                exchangeRate: exchangeRate,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'НБРБ: ${DateFormat('dd MMM').format(exchangeRate.nbDate)}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 7,
                ),
              ),
            ],
          ),
        ),
      ],
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
        domainFn: (OneDayExchangeRate exchangeRate, _) {
          return exchangeRate.nbDate;
        },
        measureFn: (OneDayExchangeRate exchangeRate, _) =>
            exchangeRate.nb * 10000,
        data: exchangeRates,
      ),
    ];

    return charts.TimeSeriesChart(
      series,
      defaultRenderer:
          charts.LineRendererConfig(includeArea: true, stacked: true),
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
        tickProviderSpec: charts.DayTickProviderSpec(increments: [1]),
        showAxisLine: false,
      ),
    );
  }
}

class _ExchangeRate extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _ExchangeRate({
    Key key,
    this.exchangeRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 50,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(2.0),
            ),
            color: exchangeRate.nbDiff == 0
                ? Colors.grey
                : exchangeRate.nbDiff < 0
                    ? Colors.green
                    : Colors.red,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              exchangeRate.nbDiff.toStringAsFixed(4),
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
