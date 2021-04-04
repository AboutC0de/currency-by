import 'package:auto_route/annotations.dart';

import '../currency_info.dart';
import '../home_widget.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeWidget, initial: true),
    AutoRoute(
      fullscreenDialog: true,
      page: CurrencyInfoModal,
    ),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
