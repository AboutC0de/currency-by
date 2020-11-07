import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../generated/l10n.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.bloc<ExchangeRateBloc>();

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
      body: ListView(
        children: [
          const Text('search'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text('Currency name'),
                ],
              ),
              const Text('chart'),
              Column(
                children: const [
                  Text('currency'),
                  Text('changes'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
