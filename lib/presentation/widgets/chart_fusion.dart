import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../infrastructure/exchange_rate/chart_period.dart';
import '../../utils/constants.dart';

const cof = 10000;
const interval = 100;

class ChartFusion extends StatelessWidget {
  final List<OneDayExchangeRate> exchangeRates;
  final Color color;
  final bool showAxisData;
  final ChartPeriod chartPeriod;
  final VoidCallback onChartTapped;

  const ChartFusion({
    Key key,
    @required this.exchangeRates,
    @required this.color,
    this.showAxisData = false,
    this.chartPeriod = ChartPeriod.oneMonth,
    this.onChartTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final max = exchangeRates
                .reduce((curr, next) => curr.nb > next.nb ? curr : next)
                .nb *
            cof +
        interval;
    final min = exchangeRates
                .reduce((curr, next) => curr.nb < next.nb ? curr : next)
                .nb *
            cof -
        interval;

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(top: showAxisData ? 5 : 0),
      onAxisLabelRender: (args) {
        if (args.axis is NumericAxis) {
          args.text = (args.value / cof).toStringAsFixed(2);
        }
      },
      onChartTouchInteractionUp: (args) {
        onChartTapped();
      },
      primaryXAxis: DateTimeAxis(
        isVisible: showAxisData,
        rangePadding: ChartRangePadding.auto,
        majorTickLines: MajorTickLines(width: 0.1),
        majorGridLines: MajorGridLines(width: 0.1),
        minorGridLines: MinorGridLines(width: 0),
        minorTickLines: MinorTickLines(width: 0),
        axisLine: AxisLine(
          width: 0.5,
          color: greyColor,
        ),
        dateFormat: DateFormat(
          chartPeriod.getDateFormat(),
        ),
        desiredIntervals: chartPeriod.getChartInterval(),
      ),
      primaryYAxis: NumericAxis(
        isVisible: showAxisData,
        rangePadding: ChartRangePadding.auto,
        majorTickLines: MajorTickLines(width: 0.1),
        minorGridLines: MinorGridLines(width: 0),
        majorGridLines: MajorGridLines(width: 0.1),
        minorTickLines: MinorTickLines(width: 0),
        axisLine: AxisLine(width: 0.1),
        minimum: min,
        maximum: max,
        placeLabelsNearAxisLine: false,
        opposedPosition: true,
        desiredIntervals: 3,
        maximumLabels: 1,
      ),
      series: <ChartSeries>[
        // Initialize line series
        AreaSeries<OneDayExchangeRate, DateTime>(
          enableTooltip: false,
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
          yValueMapper: (OneDayExchangeRate rate, _) => rate.nb * cof,
        ),
      ],
    );
  }
}
