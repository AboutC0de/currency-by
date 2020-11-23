import 'package:currency_by/presentation/widgets/divider_with_paddings.dart';
import 'package:flutter/material.dart';

import '../infrastructure/exchange_rate/chart_period.dart';
import '../utils/constants.dart';

class CurrencyInfoCharts extends StatefulWidget {
  const CurrencyInfoCharts({Key key}) : super(key: key);

  @override
  _CurrencyInfoChartsState createState() => _CurrencyInfoChartsState();
}

class _CurrencyInfoChartsState extends State<CurrencyInfoCharts> {
  ChartPeriod chartPeriod = ChartPeriod.oneMonth;

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
