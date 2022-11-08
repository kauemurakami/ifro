import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/modules/dash/controller.dart';
import 'package:ifro/core/routes/pages.dart';

class DashPage extends GetView<DashController> {
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (_) async => controller.changePage(_),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home')
            ]),
        body: SafeArea(
            child: Navigator(
          key: Get.nestedKey(1),
          initialRoute: Routes.HOME,
          onGenerateRoute: (settings) => controller.generateRoutes(settings),
        )));
  }
}
