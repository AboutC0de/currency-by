import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../application/chart/chart_cubit.dart';
import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../infrastructure/exchange_rate/chart_period.dart';
import '../../infrastructure/tracking.dart';
import '../../utils/constants.dart';

const cof = 10000;
const interval = 100;

enum ChartMode {
  normal,
  trackball,
}

typedef OnTrackballPositionChanging = void Function(TrackballArgs);

class CurrencyChart extends StatelessWidget {
  final List<OneDayExchangeRate> exchangeRates;
  final Color color;
  final bool showAxisData;
  final ChartPeriod chartPeriod;
  final VoidCallback onChartTapped;
  final bool tracking;

  const CurrencyChart({
    @required this.exchangeRates,
    @required this.color,
    this.showAxisData = false,
    this.chartPeriod = ChartPeriod.oneMonth,
    this.onChartTapped,
    this.tracking = false,
  });

  double _maxExchangeRate() {
    return exchangeRates
                .reduce((curr, next) => curr.nb > next.nb ? curr : next)
                .nb *
            cof +
        interval;
  }

  double _minExchangeRate() {
    return exchangeRates
                .reduce((curr, next) => curr.nb < next.nb ? curr : next)
                .nb *
            cof -
        interval;
  }

  @override
  Widget build(BuildContext context) {
    final max = _maxExchangeRate();
    final min = _minExchangeRate();

    final color = context.select(
        (ChartCubit cubit) => cubit.state is Preview ? this.color : blueColor);
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      backgroundColor: Colors.transparent,
      onAxisLabelRender: (args) {
        if (args.axis is NumericAxis) {
          args.text = (args.value / cof).toStringAsFixed(2);
        }
      },
      onChartTouchInteractionUp: (args) {
        if (onChartTapped == null) {
          context.read<ChartCubit>().onPreview();
        } else {
          onChartTapped();
        }
      },
      trackballBehavior: TrackballBehavior(
        markerSettings: TrackballMarkerSettings(
          borderWidth: 3,
          markerVisibility: TrackballVisibilityMode.visible,
          color: color,
          borderColor: Colors.black,
        ),
        lineColor: color,
        activationMode: ActivationMode.singleTap,
        enable: showAxisData,
        tooltipAlignment: ChartAlignment.near,
        tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
        tooltipSettings: InteractiveTooltip(
          color: Colors.transparent,
          borderColor: Colors.transparent,
          textStyle: const TextStyle(color: Colors.transparent),
        ),
      ),
      onTrackballPositionChanging: (args) {
        final index = args.chartPointInfo.dataPointIndex;
        final rate = exchangeRates[index];
        final dateLabel = DateFormat(chartDateFormat).format(rate.nbDate);
        final valueLabel =
            (double.parse(args.chartPointInfo.label) / cof).toStringAsFixed(4);
        args.chartPointInfo.header = '';
        context.read<ChartCubit>().onTracking(
              TrackingArgs(
                x: args.chartPointInfo.xPosition,
                y: args.chartPointInfo.yPosition,
                dateLabel: dateLabel,
                valueLabel: valueLabel,
              ),
            );
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
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelStyle: const TextStyle(color: Colors.white),
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
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        labelStyle: const TextStyle(color: Colors.white),
      ),
      series: <ChartSeries>[
        AreaSeries<OneDayExchangeRate, DateTime>(
          enableTooltip: false,
          opacity: 0.5,
          color: color,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [
              0,
              0.6,
              1,
            ],
            colors: <Color>[
              color,
              color.withOpacity(0.4),
              color.withOpacity(0.1),
            ],
          ),
          borderColor: color,
          borderWidth: 2,
          dataSource: exchangeRates,
          xValueMapper: (OneDayExchangeRate rate, _) => rate.nbDate,
          yValueMapper: (OneDayExchangeRate rate, _) => rate.nb * cof,
        ),
      ],
    );
  }
}
