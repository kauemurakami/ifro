import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/app/modules/home/controller.dart';

class ItemList extends GetView<HomeController> {
  final String? nome, uf;
  const ItemList({super.key, @required this.nome, @required this.uf});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.redAccent,
      onTap: () => controller.address(),
      child: Container(
        margin: const EdgeInsets.only(top: 8.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            color: Colors.green.withOpacity(.4)),
        height: Get.height / 15,
        width: Get.width,
        child: Text('$nome - $uf'),
      ),
    );
  }
}
