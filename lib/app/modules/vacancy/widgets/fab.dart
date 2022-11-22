import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/widgets/bs_new_serie.dart';

class FabCustom extends GetView<VacancyController> {
  const FabCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async =>
          showBottomSheet(context: context, builder: (c) => BSNewSerie()),
      child: const Icon(Icons.add),
    );
  }
}
