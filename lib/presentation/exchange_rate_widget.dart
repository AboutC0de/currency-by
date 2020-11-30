import 'package:flutter/material.dart';

class ExchangeRateWidget extends StatelessWidget {
  final Color color;
  final String diff;
  final VoidCallback onSourceChange;
  final String label;
  final String value;

  const ExchangeRateWidget({
    Key key,
    @required this.color,
    @required this.diff,
    @required this.label,
    @required this.value,
    @required this.onSourceChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSourceChange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          _CurrencyChanges(
            diff: diff,
            color: color,
          ),
        ],
      ),
    );
  }
}

class _CurrencyChanges extends StatelessWidget {
  final Color color;
  final String diff;

  const _CurrencyChanges({
    @required this.color,
    @required this.diff,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(2.0),
        ),
        color: color,
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          diff,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
