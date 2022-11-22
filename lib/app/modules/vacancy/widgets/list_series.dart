import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/widgets/item_serie.dart';

class Listseries extends GetView<VacancyController> {
  const Listseries({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // dismissible list
      itemCount: controller.state.length,
      itemBuilder: (context, index) => ItemSerie(index: index),
    );
  }
}
