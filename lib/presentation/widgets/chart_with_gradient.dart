import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartWithGradient extends StatelessWidget {
  final charts.Color color;
  final Color gradientColor;
  final List<charts.ChartBehavior> behaviors;
  final List<charts.Series<dynamic, DateTime>> series;

  const ChartWithGradient({
    Key key,
    @required this.color,
    @required this.gradientColor,
    @required this.behaviors,
    @required this.series,
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
        ],
      ),
    );
  }
}
