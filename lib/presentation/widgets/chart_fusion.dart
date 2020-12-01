import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../infrastructure/exchange_rate/chart_period.dart';

class ChartFusion extends StatelessWidget {
  final List<OneDayExchangeRate> exchangeRates;
  final Color color;
  final bool showAxisData;
  final ChartPeriod chartPeriod;

  const ChartFusion({
    Key key,
    @required this.exchangeRates,
    @required this.color,
    this.showAxisData = false,
    this.chartPeriod = ChartPeriod.oneMonth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      margin: const EdgeInsets.all(0),
      primaryXAxis: DateTimeAxis(
        isVisible: false,
        rangePadding: ChartRangePadding.none,
      ),
      primaryYAxis: CategoryAxis(
        isVisible: false,
        rangePadding: ChartRangePadding.none,
      ),
      series: <ChartSeries>[
        // Initialize line series
        AreaSeries<OneDayExchangeRate, DateTime>(
            enableTooltip: true,
            animationDuration: 0,
            opacity: 0.5,
            color: color,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                color,
                Colors.transparent,
              ],
            ),
            borderColor: color,
            borderWidth: 1,
            dataSource: exchangeRates,
            xValueMapper: (OneDayExchangeRate rate, _) => rate.nbDate,
            yValueMapper: (OneDayExchangeRate rate, _) => rate.nb * 10000),
      ],
    );
  }
}
