import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/widgets/button.dart';
import 'package:ifro/app/widgets/custom_tff.dart';

class BSNewSerie extends GetView<VacancyController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final edit;
  BSNewSerie({this.edit = false, super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.grey),
      child: SizedBox(
        height: Get.height / 3,
        width: Get.width,
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomTff(
                      text: 'Nome',
                      onChanged: (value) => controller.onChangedNome(value),
                      saved: (value) => controller.savedNome(value),
                      validate: (value) => controller.validateNome(value),
                    ),
                    Row(
                      children: [
                        const Text('Ativo'),
                        Obx(() => Checkbox(
                            value: controller.serie!.value.ativado!,
                            onChanged: (value) =>
                                controller.changeAtivado(value))),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      callback: () => Navigator.pop(context),
                      color: Colors.red,
                      text: 'Cancelar',
                    ),
                    CustomButton(
                      callback: () {
                        final formState = _formKey.currentState;
                        edit ? controller.putSerie() : controller.postSerie();
                        Navigator.pop(context);
                      },
                      text: edit ? 'Editar Série' : 'Adicionar Série',
                    ),
                  ],
                )
              ],
            )).paddingAll(16.0),
      ),
    );
  }
}
