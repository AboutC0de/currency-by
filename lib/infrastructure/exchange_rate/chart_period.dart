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
}
