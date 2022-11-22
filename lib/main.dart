import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/data/services/auth.dart';
import 'package:ifro/core/routes/pages.dart';
import 'package:ifro/core/utils/helpers/route_delegate.dart';

void main() async {
  await Get.putAsync(() => AuthService().init());

  runApp(GetMaterialApp.router(
    getPages: AppPages.pages,
    defaultTransition: Transition.fade,
    routerDelegate: AppRouterDelegate(),
    // initialRoute: Routes.HOME,
    //sem rotas nomeadas
    // initialBinding: HomeBinding(),
    // home: const HomePage(),
  ));
}
