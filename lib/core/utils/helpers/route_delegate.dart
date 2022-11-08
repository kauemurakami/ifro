import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/core/routes/pages.dart';

class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute(Routes.DASH)!.currentPage!],
    );
  }
}
