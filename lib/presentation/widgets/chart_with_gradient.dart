import 'package:charts_common/common.dart' as common
    show BasicDateTimeTickFormatterSpec;
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/exchange_rate/one_day/one_day_exchange_rate.dart';

class ChartWithGradient extends StatelessWidget {
  final charts.Color color;
  final Color gradientColor;
  final bool showAxisData;

  final List<charts.ChartBehavior> behaviors;
  final List<charts.Series<OneDayExchangeRate, DateTime>> series;

  const ChartWithGradient({
    Key key,
    @required this.color,
    @required this.gradientColor,
    @required this.behaviors,
    @required this.series,
    this.showAxisData = false,
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
              behaviors: behaviors,
            ),
          ),
          charts.TimeSeriesChart(
            series,
            animate: false,
            primaryMeasureAxis: charts.NumericAxisSpec(
              renderSpec: !showAxisData ? const charts.NoneRenderSpec() : null,
              tickProviderSpec: const charts.BasicNumericTickProviderSpec(
                zeroBound: false,
              ),
              tickFormatterSpec: charts.BasicNumericTickFormatterSpec(
                (measure) => (measure / 10000).toStringAsFixed(1),
              ),
              showAxisLine: false,
            ),
            domainAxis: charts.DateTimeAxisSpec(
              renderSpec: !showAxisData
                  ? const charts.NoneRenderSpec()
                  : charts.GridlineRendererSpec(),
              showAxisLine: false,
              tickFormatterSpec:
                  common.BasicDateTimeTickFormatterSpec.fromDateFormat(
                DateFormat('dd MMM'),
              ),
              tickProviderSpec: charts.StaticDateTimeTickProviderSpec(
                [
                  charts.TickSpec(
                    series.first.data[0].nbDate,
                  ),
                  charts.TickSpec(
                    series.first.data[1].nbDate,
                  ),
                  charts.TickSpec(
                    series.first.data[5].nbDate,
                  ),
                ],
              ),
            ),
            behaviors: behaviors,
          ),
        ],
      ),
    );
  }
}
