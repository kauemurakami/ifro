import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ifro/app/data/models/serie.dart';
import 'package:ifro/app/modules/vacancy/repository.dart';
import 'package:ifro/app/modules/vacancy/widgets/bs_new_serie.dart';
import 'package:ifro/core/routes/pages.dart';
import 'package:ifro/core/utils/functions/is_error.dart';

class VacancyController extends GetxController with StateMixin {
  final VacancyRepository repository;

  Rx<Serie>? serie = Serie(ativado: false, nome: '').obs;

  // Rx<bool> changeActivate = false.obs;
  // Rx<String> nome = ''.obs;
  VacancyController(this.repository);
  @override
  void onInit() async {
    await getSeries();
    super.onInit();
  }

  putSerie() async {
    final data = await repository.putSerie(serie!.value);
    if (verifyError(data)) {
      return;
    } else {
      var index = state.indexWhere((element) => element.id == serie!.value.id);
      state.removeAt(index);
      state.insert(index, data);
      change(state, status: RxStatus.success());
    }
  }

  dismiss(DismissDirection direction, id) async {
    if (direction == DismissDirection.endToStart) {
      arquivar();
    } else {
      await delete(id);
    }
  }

  arquivar() {
    print('item archivado');
  }

  delete(id) async {
    final data = await repository.deleteSerie(id);
    if (verifyError(data)) {
      return;
    } else {
      var index = state.indexWhere((element) => element.id == id);
      state.removeAt(index);
      change(state, status: RxStatus.success());
    }
  }

  postSerie() async {
    final data = await repository.postSerie(serie!.value);
    if (verifyError(data)) {
      return;
    } else {
      state.add(data);
      change(state, status: RxStatus.success());
    }
  }

  getSerie(Serie serie) async {
    final data = await repository.getSerie(serie.id);
    if (verifyError(data)) {
      return;
    } else {
      this.serie!.value = data;
      await Get.rootDelegate.toNamed(
        Routes.SERIE,
      );
    }
  }

  getSeries() async {
    final data = await repository.getSeries();
    if (verifyError(data)) {
      return;
    } else {
      change(data, status: RxStatus.success());
    }
  }

  openBs() async => await Get.bottomSheet(BSNewSerie());
  changeAtivado(b) => serie!.update((val) => val!.ativado = b);

  onChangedNome(value) => serie!.update((val) => val!.nome = value);
  savedNome(value) => serie!.update((val) => val!.nome = value);
  validateNome(value) => value.length < 2 ? 'Insira um nome válido' : null;
}
