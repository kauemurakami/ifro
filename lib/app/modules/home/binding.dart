import 'package:get/get.dart';
import 'package:ifro/app/data/providers/api.dart';
import 'package:ifro/app/modules/home/controller.dart';
import 'package:ifro/app/modules/home/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
