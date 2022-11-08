import 'package:get/get.dart';
import 'package:ifro/app/data/providers/api.dart';
import 'package:ifro/app/modules/dash/controller.dart';
import 'package:ifro/app/modules/dash/repository.dart';

class DashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashController>(() => DashController(DashRepository(MyApi())));
  }
}
