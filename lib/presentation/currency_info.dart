import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/currency_exchange_rate/currency_exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../injection.dart';
import '../utils/constants.dart';
import 'widgets/chart_fusion.dart';
import 'widgets/divider_with_paddings.dart';

void showCurrencyInfo(
  BuildContext context,
  ExchangeRate exchangeRate,
  CurrencySource source,
) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext bc) {
      return BlocProvider<CurrencyExchangeRateBloc>(
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
          height: MediaQuery.of(context).size.height * 0.80,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 26,
            ),
            child: Column(
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
                            color: Colors.white,
                            fontSize: 27,
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
                        ),
                      ),
                    ),
                  ],
                ),
                const DividerWithPadding(
                  padding: 0,
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Text(
                        exchangeRate.nb.toString(),
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
                        source.getDiff(exchangeRate),
                        style: TextStyle(
                          color: source.getNbDiffColor(exchangeRate),
                        ),
                      )
                    ],
                  ),
                ),
                ChartFusion(
                  color: source.getColor(exchangeRate),
                  exchangeRates: const [],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
