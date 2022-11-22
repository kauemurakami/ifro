import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/widgets/list_series.dart';

class BodySection extends GetView<VacancyController> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: controller.obx((state) => const Listseries()),
    );
  }
}
