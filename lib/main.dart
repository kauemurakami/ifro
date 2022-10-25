import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/data/services/auth.dart';
import 'package:ifro/core/routes/pages.dart';

void main() async {
  await Get.putAsync(() => AuthService().init());
  runApp(GetMaterialApp(
    getPages: AppPages.pages,
    initialRoute: Routes.HOME,
    //sem rotas nomeadas
    // initialBinding: HomeBinding(),
    // home: const HomePage(),
  ));
}
