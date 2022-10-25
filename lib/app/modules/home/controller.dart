import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/data/models/app_error.dart';
import 'package:ifro/app/data/models/citys.dart';
import 'package:ifro/app/data/models/states.dart';
import 'package:ifro/app/modules/home/repository.dart';
import 'package:ifro/app/modules/home/widgets/bottom_sheet.dart';
import 'package:ifro/core/utils/functions/is_error.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);
  final load = false.obs;
  final selected = States().obs;
  final citys = <Citys>[].obs;
  final n = 0.obs; // ex
  Rx<int>? n1; // ex

  @override
  void onInit() async {
    await getStates();
    super.onInit();
  }

  getStates() async {
    final response = await repository.getStates();
    if (response.runtimeType == AppError) {
      // states.add(States(nome: 'Nenhum estado encontrado'));
      change(null, status: RxStatus.error('Nenhum estado encontrado'));
    } else {
      selected.value = response.first;
      // states.value = response;
      change(response, status: RxStatus.success());
    }
  }

  getCitys() async {
    load.value = true;
    final response = await repository.getCitys(selected.value.uf!);
    verifyError(response)
        ? citys.add(Citys(nome: 'Nenhuma cidade encontrado'))
        : citys.value = response;
    load.value = false;
  }

  address() async {
    await Get.bottomSheet(backgroundColor: Colors.grey, MyBottomSheet());
    Get.back();
  }

  cadastrar() async {
    final response = await repository.signup();
    if (response) {
      Get.showSnackbar(GetSnackBar(
        duration: Duration(seconds: 2),
        message: 'Cadastrado',
        isDismissible: true,
      ));
    } else {
      Get.showSnackbar(GetSnackBar(
        duration: Duration(seconds: 2),
        message: 'tente novamente',
        isDismissible: true,
      ));
    }
  }

  selectState(newState) {
    selected.value = newState;
    change(state, status: RxStatus.success());
    getCitys();
  }

  increment() {
    n.value++;
  }
}
