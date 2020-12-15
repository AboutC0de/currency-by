import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/chart/chart_cubit.dart';
import '../application/currency_exchange_rate/currency_exchange_rate_bloc.dart';
import '../infrastructure/currency_source.dart';
import '../infrastructure/exchange_rate/chart_period.dart';
import '../utils/constants.dart';
import 'widgets/chart_fusion.dart';
import 'widgets/divider_with_paddings.dart';
import 'widgets/loading_progress_indicator.dart';

class CurrencyInfoCharts extends StatefulWidget {
  final CurrencySource source;

  const CurrencyInfoCharts({
    @required this.source,
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
        BlocBuilder<ChartCubit, ChartCubitState>(
          builder: (context, state) => SizedBox(
            width: double.infinity,
            height: 30,
            child: state.when(preview: () {
              return Row(
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
                      .toList()
                ],
              );
            }, tracking: (tracking) {
              return Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      tracking.dateLabel,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: tracking.x,
                    child: Text(
                      tracking.valueLabel,
                      style: const TextStyle(
                        color: blueColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        const DividerWithPadding(padding: 2),
        if (bloc.state == const CurrencyExchangeRateState.loading())
          LoadingProgressIndicator()
        else
          SizedBox(
            height: 200,
            child: ChartFusion(
              color: widget.source.getDiffColor(range.first.nb - range.last.nb),
              showAxisData: true,
              chartPeriod: chartPeriod,
              exchangeRates: range,
            ),
          ),
      ],
    );
  }
}
