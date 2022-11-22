import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/core/routes/pages.dart';

class SeriePage extends GetView {
  const SeriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            //gambiarra alterar
            onPressed: () async => await Get.rootDelegate.offNamed(Routes.DASH),
            icon: const Icon(Icons.arrow_back_ios_new)),
        Text(Get.find<VacancyController>().serie!.value.id!),
        Text(Get.find<VacancyController>().serie!.value.nome!),
        Text(Get.find<VacancyController>().serie!.value.createdAt!.toString()),
        Text(Get.find<VacancyController>().serie!.value.updatedAt!.toString()),
        Text(Get.find<VacancyController>().serie!.value.ativado!.toString())
      ],
    ).paddingAll(16.0)));
  }
}
