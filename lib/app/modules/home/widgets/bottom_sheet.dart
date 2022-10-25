import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/modules/home/controller.dart';
import 'package:ifro/app/widgets/custom_tff.dart';
import 'package:ifro/core/utils/extensions/padding_dif.dart';
import 'package:ifro/core/utils/validators/address_validators.dart';

class MyBottomSheet extends GetView<HomeController> {
  MyBottomSheet({super.key});
  final GlobalKey<FormState>? formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        CustomTff(
          text: 'Endereço',
          onChanged: (value) => onChangedEndereco(value),
          validate: (value) => validateEndereco(value),
          saved: (value) => saveEndereco(value),
        ),
        CustomTff(
          text: 'Número',
          onChanged: (value) => onChangedNumero(value),
          validate: (value) => validateNumero(value),
          saved: (value) => saveNumero(value),
        ),
        CustomTff(
          text: 'Bairro',
          onChanged: (value) => onChangedBairro(value),
          validate: (value) => validateBairro(value),
          saved: (value) => saveBairro(value),
        ),
        MaterialButton(
          color: Colors.amberAccent,
          child: Text('Cadastrar'),
          onPressed: () {
            final formState = formKey!.currentState;
            if (formState!.validate()) {
              controller.cadastrar();
            }
          },
        )
      ]),
    ).defaultPadding;
  }
}
