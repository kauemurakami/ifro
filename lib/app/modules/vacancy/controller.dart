import 'package:get/get.dart';
import 'package:ifro/app/modules/vacancy/repository.dart';

class VacancyController extends GetxController {
  final VacancyRepository repository;
  VacancyController(this.repository);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
