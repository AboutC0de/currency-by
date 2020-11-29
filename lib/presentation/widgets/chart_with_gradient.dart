import 'package:charts_common/common.dart' as common
    show BasicDateTimeTickFormatterSpec;
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';
import '../../infrastructure/exchange_rate/chart_period.dart';
import '../../utils/constants.dart';

class ChartWithGradient extends StatelessWidget {
  final charts.Color color;
  final Color gradientColor;
  final bool showAxisData;
  final ChartPeriod period;

  final List<charts.ChartBehavior> behaviors;
  final List<charts.Series<OneDayExchangeRate, DateTime>> series;

  const ChartWithGradient({
    Key key,
    @required this.color,
    @required this.gradientColor,
    @required this.behaviors,
    @required this.series,
    this.showAxisData = false,
    this.period = ChartPeriod.oneWeek,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  gradientColor,
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
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: !showAxisData
                    ? const charts.NoneRenderSpec()
                    : charts.GridlineRendererSpec(
                        lineStyle: charts.LineStyleSpec(
                          thickness: 0,
                          color: charts.Color.fromHex(code: greyHexColorString),
                        ),
                        axisLineStyle: const charts.LineStyleSpec(
                          thickness: 0,
                        ),
                        tickLengthPx: 15,
                        labelJustification:
                            charts.TickLabelJustification.inside,
                        labelOffsetFromAxisPx: 20,
                      ),
                tickProviderSpec: const charts.BasicNumericTickProviderSpec(
                    zeroBound: false, desiredTickCount: 4),
                tickFormatterSpec: charts.BasicNumericTickFormatterSpec(
                  (measure) => (measure / 10000).toStringAsFixed(2),
                ),
                showAxisLine: false,
              ),
              domainAxis: charts.DateTimeAxisSpec(
                renderSpec: !showAxisData
                    ? const charts.NoneRenderSpec()
                    : charts.GridlineRendererSpec(
                        lineStyle: charts.LineStyleSpec(
                          thickness: 0,
                          color: charts.Color.fromHex(code: greyHexColorString),
                        ),
                      ),
                showAxisLine: false,
                tickFormatterSpec:
                    common.BasicDateTimeTickFormatterSpec.fromDateFormat(
                  DateFormat(period.getDateFormat()),
                ),
                tickProviderSpec: charts.DayTickProviderSpec(
                  increments: [period.getChartDaysPeriod()],
                ),
              ),
              behaviors: behaviors,
            ),
          ),
          charts.TimeSeriesChart(
            series,
            animate: false,
            primaryMeasureAxis: charts.NumericAxisSpec(
              renderSpec: !showAxisData
                  ? const charts.NoneRenderSpec()
                  : const charts.SmallTickRendererSpec(
                      lineStyle: charts.LineStyleSpec(
                        color: charts.Color.transparent,
                      ),
                      labelOffsetFromAxisPx: 20,
                    ),
              tickProviderSpec: const charts.BasicNumericTickProviderSpec(
                  zeroBound: false, desiredTickCount: 4),
              tickFormatterSpec: charts.BasicNumericTickFormatterSpec(
                (measure) => (measure / 10000).toStringAsFixed(2),
              ),
              showAxisLine: false,
            ),
            domainAxis: charts.DateTimeAxisSpec(
              renderSpec: !showAxisData
                  ? const charts.NoneRenderSpec()
                  : const charts.SmallTickRendererSpec(
                      lineStyle: charts.LineStyleSpec(
                        color: charts.Color.transparent,
                      ),
                    ),
              showAxisLine: false,
              tickFormatterSpec:
                  common.BasicDateTimeTickFormatterSpec.fromDateFormat(
                DateFormat(period.getDateFormat()),
              ),
              tickProviderSpec: charts.DayTickProviderSpec(
                increments: [period.getChartDaysPeriod()],
              ),
            ),
            behaviors: behaviors,
          ),
        ],
      ),
    );
  }
}
