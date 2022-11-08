import 'package:get/get.dart';
import 'package:ifro/app/data/providers/api.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/repository.dart';

class VacancyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VacancyController>(
        () => VacancyController(VacancyRepository(MyApi())));
  }
}
