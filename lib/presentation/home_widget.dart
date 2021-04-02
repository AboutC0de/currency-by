import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/exchange_rate/exchange_rate_bloc.dart';
import '../domain/exchange_rate/exchange_rate.dart';
import 'one_day_exchange_rate_widget.dart';
import 'widgets/loading_progress_indicator.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ExchangeRateBloc>();
    return Scaffold(

    body: bloc.state.when(
        initial: () => LoadingProgressIndicator(),
        loaded: (List<ExchangeRate> rates) => Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          color: Theme.of(context).accentColor,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: index == 0 ? 10 : 0,
                  bottom: index == rates.length - 1 ? 30 : 0,
                ),
                child: OneDayExchangeRateWidget(
                  exchangeRate: rates[index],
                ),
              );
            },
            itemCount: rates.length,
            separatorBuilder: (BuildContext context, int index) {
              return Column(
                children: const [
                  Divider(color: Colors.grey),
                ],
              );
            },
          ),
        ),
        loading: () => LoadingProgressIndicator(),
      ),
    );
  }
}
