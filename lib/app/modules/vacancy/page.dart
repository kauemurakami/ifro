import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/widgets/body_section.dart';
import 'package:ifro/app/modules/vacancy/widgets/fab.dart';
import 'package:ifro/app/modules/vacancy/widgets/top_section.dart';

class VacancyPage extends GetView<VacancyController> {
  const VacancyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FabCustom(),
        body: RefreshIndicator(
          onRefresh: () async => await controller.getSeries(),
          child: SafeArea(
              child: Column(
            children: [const SeriesTopSection(), BodySection()],
          )),
        ));
  }
}
