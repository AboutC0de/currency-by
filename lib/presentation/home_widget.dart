import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import '../generated/l10n.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).currency,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('dd MMMM').format(DateTime.now()).toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  S.of(context).edit,
                  style: const TextStyle(color: Colors.lightBlue),
                ),
              ),
            ],
          ),
        ),
      ),
      body: bloc.state.when(
        initial: () => const Text('initial'),
        loaded: () => ListView(
          children: [
            ...bloc.exchangeRates
                .map(
                  (e) => _OneDayExchangeRate(
                    exchangeRate: e,
                  ),
                )
                .toList()
          ],
        ),
        loading: () => const Text('loading'),
      ),
    );
  }
}

class _OneDayExchangeRate extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _OneDayExchangeRate({Key key, this.exchangeRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(exchangeRate.name),
            Text(exchangeRate.currencyCode),
          ],
        ),
        const Text('chart'),
        Column(
          children: [
            Text(exchangeRate.nb.toString()),
          ],
        ),
      ],
    );
  }
}
