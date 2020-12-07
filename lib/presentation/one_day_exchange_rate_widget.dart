import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../utils/constants.dart';
import 'currency_info.dart';
import 'exchange_rate_widget.dart';
import 'widgets/chart_fusion.dart';

class OneDayExchangeRateWidget extends StatefulWidget {
  final ExchangeRate _exchangeRate;

  const OneDayExchangeRateWidget({Key key, ExchangeRate exchangeRate})
      : _exchangeRate = exchangeRate,
        super(key: key);

  @override
  _OneDayExchangeRateWidgetState createState() =>
      _OneDayExchangeRateWidgetState();
}

class _OneDayExchangeRateWidgetState extends State<OneDayExchangeRateWidget> {
  CurrencySource _currencySource = CurrencySource.nb;

  void onTap() {
    showCupertinoModalBottomSheet(
      expand: true,
      useRootNavigator: true,
      context: context,
      builder: (context) => CurrencyInfoModal(
        exchangeRate: widget._exchangeRate,
        source: _currencySource,
      ),
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      transitionBackgroundColor: Colors.transparent,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    final exchangeRate = widget._exchangeRate;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exchangeRate.currencyCode,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  exchangeRate.currencyFullName,
                  style: const TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 50,
                child: _ExchangeRateChart(
                  exchangeRate: exchangeRate,
                  currencySource: _currencySource,
                  onTap: onTap,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ExchangeRateWidget(
              diff: _currencySource.getDiffSign(exchangeRate),
              color: _currencySource.getColor(exchangeRate),
              label:
                  '${_currencySource.getTranslation(context)}: ${_currencySource.getDate(exchangeRate)}',
              value: _currencySource.getValue(exchangeRate).toStringAsFixed(4),
              onSourceChange: onSourceChange,
            ),
          ),
        ],
      ),
    );
  }

  void onSourceChange() {
    final index = CurrencySource.values
        .indexWhere((element) => element == _currencySource);
    setState(() {
      _currencySource = CurrencySource.values.length - 1 == index
          ? CurrencySource.values[0]
          : CurrencySource.values[index + 1];
    });
  }
}

class _ExchangeRateChart extends StatelessWidget {
  final ExchangeRate exchangeRate;
  final CurrencySource currencySource;
  final VoidCallback onTap;

  const _ExchangeRateChart({
    Key key,
    @required this.exchangeRate,
    @required this.currencySource,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    final exchangeRates = bloc.monthExchangeRates[exchangeRate.currencyCode];

    return ChartFusion(
      color: currencySource.getDiffColor(exchangeRate.nbDiff),
      exchangeRates: exchangeRates,
      onChartTapped: onTap,
    );
  }
}
