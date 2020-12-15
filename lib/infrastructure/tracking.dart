import 'package:flutter/material.dart';

class TrackingArgs {
  final double x;
  final double y;
  final String dateLabel;
  final String valueLabel;

  TrackingArgs({
    @required this.x,
    @required this.y,
    @required this.dateLabel,
    @required this.valueLabel,
  });
}
