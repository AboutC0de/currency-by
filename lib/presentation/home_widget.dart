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
                    S.of(context).appTitle,
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
              // FlatButton(
              //   onPressed: () {},
              //   child: Text(
              //     S.of(context).edit,
              //     style: const TextStyle(color: Colors.lightBlue),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      body: bloc.state.when(
        initial: () => const Text('initial'),
        loaded: () => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: Theme.of(context).accentColor,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return _OneDayExchangeRate(
                exchangeRate: bloc.exchangeRates[index],
              );
            },
            itemCount: bloc.exchangeRates.length,
            separatorBuilder: (BuildContext context, int index) {
              return Column(
                children: const [
                  Divider(color: Colors.grey),
                ],
              );
            },
          ),
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
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exchangeRate.currencyCode,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                exchangeRate.name,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 3,
          child: Text('chart'),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // const Text(
                  //   'НБРБ',
                  //   style: TextStyle(
                  //     color: Colors.grey,
                  //     fontWeight: FontWeight.w400,
                  //     fontSize: 5,
                  //   ),
                  // ),
                  const SizedBox(width: 1),
                  Text(
                    exchangeRate.nb.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              _ExchangeRate(
                exchangeRate: exchangeRate,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ExchangeRate extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const _ExchangeRate({
    Key key,
    this.exchangeRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: 50,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(2.0),
            ),
            color: exchangeRate.nbDiff >= 0 ? Colors.green : Colors.red,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              exchangeRate.nbDiff.toStringAsFixed(4),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }
}
