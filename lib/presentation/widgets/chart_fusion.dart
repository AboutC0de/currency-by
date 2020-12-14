import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../infrastructure/exchange_rate/chart_period.dart';
import '../../utils/constants.dart';

const cof = 10000;
const interval = 100;

enum ChartMode {
  normal,
  trackball,
}

class TrackballArgs {
  final double x;
  final double y;
  final String date;
  final String value;
  final bool tracking;

  TrackballArgs({
    this.x,
    this.y,
    this.date,
    this.value,
    this.tracking,
  });
}

typedef OnTrackballPositionChanging = void Function(TrackballArgs);

class ChartFusion extends StatefulWidget {
  final List<OneDayExchangeRate> exchangeRates;
  final Color color;
  final bool showAxisData;
  final ChartPeriod chartPeriod;
  final VoidCallback onChartTapped;
  final OnTrackballPositionChanging onTrackballPositionChanging;
  final bool tracking;

  const ChartFusion({
    @required this.exchangeRates,
    @required this.color,
    this.showAxisData = false,
    this.chartPeriod = ChartPeriod.oneMonth,
    this.onChartTapped = emptyFunc,
    this.onTrackballPositionChanging,
    this.tracking = false,
  });

  @override
  _ChartFusionState createState() => _ChartFusionState();
}

class _ChartFusionState extends State<ChartFusion> {
  @override
  Widget build(BuildContext context) {
    final max = widget.exchangeRates
                .reduce((curr, next) => curr.nb > next.nb ? curr : next)
                .nb *
            cof +
        interval;
    final min = widget.exchangeRates
                .reduce((curr, next) => curr.nb < next.nb ? curr : next)
                .nb *
            cof -
        interval;

    final color = widget.tracking ? Colors.blue : widget.color;
    print('build');
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      backgroundColor: Colors.transparent,
      onAxisLabelRender: (args) {
        if (args.axis is NumericAxis) {
          args.text = (args.value / cof).toStringAsFixed(2);
        }
      },
      onChartTouchInteractionUp: (args) {
        if (widget.onTrackballPositionChanging != null) {
          widget.onTrackballPositionChanging(
            TrackballArgs(
              tracking: false,
            ),
          );
        }
      },
      trackballBehavior: TrackballBehavior(
        markerSettings: TrackballMarkerSettings(
          borderWidth: 1,
          markerVisibility: TrackballVisibilityMode.visible,
          color: color,
        ),
        enable: widget.showAxisData,
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
        final rate = widget.exchangeRates[index];
        final dateLabel = DateFormat('d.MM.yyyy').format(rate.nbDate);
        final valueLabel =
            (double.parse(args.chartPointInfo.label) / cof).toStringAsFixed(4);
        args.chartPointInfo.header = '';
        if (widget.onTrackballPositionChanging != null) {
          widget.onTrackballPositionChanging(
            TrackballArgs(
              x: args.chartPointInfo.xPosition,
              y: args.chartPointInfo.yPosition,
              date: dateLabel,
              value: valueLabel,
              tracking: true,
            ),
          );
        }
      },
      primaryXAxis: DateTimeAxis(
        isVisible: widget.showAxisData,
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
          widget.chartPeriod.getDateFormat(),
        ),
        desiredIntervals: widget.chartPeriod.getChartInterval(),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
      ),
      primaryYAxis: NumericAxis(
        isVisible: widget.showAxisData,
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
          dataSource: widget.exchangeRates,
          xValueMapper: (OneDayExchangeRate rate, _) => rate.nbDate,
          yValueMapper: (OneDayExchangeRate rate, _) => rate.nb * cof,
        ),
      ],
    );
  }
}
