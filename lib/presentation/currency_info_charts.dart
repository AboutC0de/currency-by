import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/currency_exchange_rate/currency_exchange_rate_bloc.dart';
import '../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../infrastructure/exchange_rate/chart_period.dart';
import '../utils/constants.dart';
import 'widgets/chart_with_gradient.dart';
import 'widgets/divider_with_paddings.dart';
import 'widgets/loading_progress_indicator.dart';

class CurrencyInfoCharts extends StatefulWidget {
  final charts.Color chartColor;
  final Color gradientColor;

  const CurrencyInfoCharts({
    @required this.chartColor,
    @required this.gradientColor,
  });

  @override
  _CurrencyInfoChartsState createState() => _CurrencyInfoChartsState();
}

class _CurrencyInfoChartsState extends State<CurrencyInfoCharts> {
  ChartPeriod chartPeriod = ChartPeriod.oneMonth;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CurrencyExchangeRateBloc>();
    final exchangeRates = bloc.currencyExchangeRates ?? [];
    final range = exchangeRates
        .getRange(
          0,
          chartPeriod.getAmountOfDays(exchangeRates.length),
        )
        .toList();
    return Column(
      children: [
        const DividerWithPadding(
          padding: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...ChartPeriod.values
                .map(
                  (period) => GestureDetector(
                    onTap: () {
                      setState(() {
                        chartPeriod = period;
                      });
                    },
                    child: Container(
                      width: 27,
                      height: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: period == chartPeriod
                            ? backgroundGreyColor
                            : Colors.transparent,
                      ),
                      child: Text(
                        period.getTranslations(context),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: period == chartPeriod
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
        const DividerWithPadding(padding: 2),
        if (bloc.state == const CurrencyExchangeRateState.loading())
          LoadingProgressIndicator()
        else
          ChartWithGradient(
            color: widget.chartColor,
            gradientColor: widget.gradientColor,
            series: [
              charts.Series<OneDayExchangeRate, DateTime>(
                id: 'currency',
                colorFn: (_, __) => widget.chartColor,
                domainFn: (OneDayExchangeRate exchangeRate, _) =>
                    exchangeRate.nbDate,
                measureFn: (OneDayExchangeRate exchangeRate, _) =>
                    exchangeRate.nb * 10000,
                data: range,
                strokeWidthPxFn: (_, __) => 1.5,
              ),
            ],
            behaviors: const [],
          ),
      ],
    );
  }
}
