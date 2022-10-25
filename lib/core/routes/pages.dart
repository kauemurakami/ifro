import 'package:dependencies/dependencies.dart';
import 'package:ifro/app/modules/home/binding.dart';
import 'package:ifro/app/modules/home/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        binding: HomeBinding()),
  ];
}
