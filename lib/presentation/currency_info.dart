import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../application/currency_exchange_rate/currency_exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../injection.dart';
import '../utils/constants.dart';
import 'currency_info_charts.dart';
import 'widgets/divider_with_paddings.dart';

class CurrencyInfoModal extends StatelessWidget {
  final ExchangeRate exchangeRate;
  final CurrencySource source;

  const CurrencyInfoModal({
    Key key,
    @required this.exchangeRate,
    @required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: darkGreyColor,
      child: Scaffold(
        backgroundColor: darkGreyColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            titleSpacing: 0,
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: darkGreyColor,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            exchangeRate.currencyCode,
                            style: const TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            exchangeRate.currencyFullName[0].toLowerCase() +
                                exchangeRate.currencyFullName.substring(1),
                            style: const TextStyle(
                              color: greyColor,
                              fontSize: 17,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: backgroundGreyColor,
                          ),
                          child: const Icon(
                            Icons.close,
                            color: greyColor,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const DividerWithPadding(),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: BlocProvider<CurrencyExchangeRateBloc>(
            create: (BuildContext context) => getIt<CurrencyExchangeRateBloc>()
              ..getCurrencyExchangeRates(exchangeRate.currencyCode),
            child: Container(
              decoration: const BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(),
                controller: ModalScrollController.of(context),
                children: [
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Text(
                          exchangeRate.nb.toStringAsFixed(4),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          source.formatDiff(exchangeRate.nbDiff),
                          style: TextStyle(
                            color: source.getNbDiffColor(exchangeRate),
                          ),
                        )
                      ],
                    ),
                  ),
                  CurrencyInfoCharts(
                    source: source,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
