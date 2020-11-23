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
}
