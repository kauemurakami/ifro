import 'package:dependencies/dependencies.dart';
import 'package:ifro/app/modules/dash/binding.dart';
import 'package:ifro/app/modules/dash/page.dart';
import 'package:ifro/app/modules/home/binding.dart';
import 'package:ifro/app/modules/home/page.dart';
import 'package:ifro/app/modules/vacancy/binding.dart';
import 'package:ifro/app/modules/vacancy/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.DASH, page: () => DashPage(), binding: DashBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.VACANCY,
        page: () => VacancyPage(),
        binding: VacancyBinding()),
  ];
}
