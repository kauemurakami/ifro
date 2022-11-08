import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';

class VacancyPage extends GetView<VacancyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('VacancyController')));
  }
}
