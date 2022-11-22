import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/modules/dash/controller.dart';
import 'package:ifro/core/routes/pages.dart';

class DashPage extends GetView<DashController> {
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              currentIndex: controller.index.value,
              onTap: (_) async => controller.changePage(_),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: controller.current.value == Routes.HOME
                          ? Colors.blue
                          : Colors.grey,
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.abc,
                        color: controller.current.value == Routes.VACANCY
                            ? Colors.blue
                            : Colors.grey),
                    label: 'VAC')
              ]),
        ),
        body: SafeArea(
            child: Navigator(
          key: Get.nestedKey(1),
          initialRoute: Routes.HOME,
          onGenerateRoute: (settings) => controller.generateRoutes(settings),
        )));
  }
}
