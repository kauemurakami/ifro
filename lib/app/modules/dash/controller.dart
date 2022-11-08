import 'package:get/get.dart';
import 'package:ifro/app/modules/dash/repository.dart';
import 'package:ifro/app/modules/home/binding.dart';
import 'package:ifro/app/modules/home/page.dart';
import 'package:ifro/app/modules/vacancy/binding.dart';
import 'package:ifro/app/modules/vacancy/page.dart';
import 'package:ifro/core/routes/pages.dart';

class DashController extends GetxController {
  final DashRepository repository;
  DashController(this.repository);

  generateRoutes(settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
        settings: settings,
        transition: Transition.leftToRight,
        binding: HomeBinding(),
        page: () => HomePage(),
      );
    }
    if (settings.name == Routes.VACANCY) {
      return GetPageRoute(
        settings: settings,
        transition: Transition.rightToLeft,
        binding: VacancyBinding(),
        page: () => VacancyPage(),
      );
    }
    return null;
  }

  final routes = [Routes.HOME, Routes.VACANCY];
  changePage(_) {
    Get.toNamed(routes[_], id: 1, preventDuplicates: true);
  }
}
