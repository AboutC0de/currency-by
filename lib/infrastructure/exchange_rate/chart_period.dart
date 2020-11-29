import 'package:flutter/cupertino.dart';

import '../../generated/l10n.dart';

enum ChartPeriod { oneWeek, oneMonth, threeMonth, sixMonth, oneYear }

extension ChartPeriodExtension on ChartPeriod {
  String getTranslations(BuildContext context) {
    switch (this) {
      case ChartPeriod.oneWeek:
        return S.of(context).oneWeek;
      case ChartPeriod.oneMonth:
        return S.of(context).oneMonth;
      case ChartPeriod.threeMonth:
        return S.of(context).threeMonth;
      case ChartPeriod.sixMonth:
        return S.of(context).sixMonth;
      case ChartPeriod.oneYear:
        return S.of(context).oneYear;
      default:
        return S.of(context).oneWeek;
    }
  }

  int getAmountOfDays(int max) {
    switch (this) {
      case ChartPeriod.oneWeek:
        return max < 7 ? max : 7;
      case ChartPeriod.oneMonth:
        return max < 31 ? max : 31;
      case ChartPeriod.threeMonth:
        return max < 90 ? max : 90;
      case ChartPeriod.sixMonth:
        return max < 180 ? max : 180;
      case ChartPeriod.oneYear:
        return max < 365 ? max : 365;
      default:
        return max;
    }
  }

  String getDateFormat() {
    switch (this) {
      case ChartPeriod.oneWeek:
        return 'd';
      case ChartPeriod.oneMonth:
        return 'd';
      case ChartPeriod.threeMonth:
        return 'MMM';
      case ChartPeriod.sixMonth:
        return 'MMM';
      case ChartPeriod.oneYear:
        return 'MMM';
      default:
        return 'dd';
    }
  }

  int getChartDaysPeriod() {
    switch (this) {
      case ChartPeriod.oneWeek:
        return 1;
      case ChartPeriod.oneMonth:
        return 6;
      case ChartPeriod.threeMonth:
        return 31;
      case ChartPeriod.sixMonth:
        return 31;
      case ChartPeriod.oneYear:
        return 160;
      default:
        return 2;
    }
  }
}
