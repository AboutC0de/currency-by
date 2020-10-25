import 'package:auto_route/auto_route_annotations.dart';
import 'package:currency_by/home_widget.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeWidget, initial: true),
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
