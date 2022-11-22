import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/modules/vacancy/controller.dart';
import 'package:ifro/app/modules/vacancy/widgets/bs_new_serie.dart';

class ItemSerie extends GetView<VacancyController> {
  final int? index;
  const ItemSerie({this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.getSerie(controller.state[index]),
      child: Dismissible(
        key: Key('value'),
        onDismissed: (direction) => '',
        confirmDismiss: (direction) async {
          if (direction == DismissDirection.endToStart) {
            return false;
          } else {
            await controller.dismiss(direction, controller.state[index].id);
            return true;
          }
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 4.0),
          color: Colors.grey.withOpacity(.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(controller.state[index].nome),
                  IconButton(
                      onPressed: () => showBottomSheet(
                          context: context,
                          builder: (c) => BSNewSerie(
                                edit: true,
                              )),
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.green,
                      ))
                ],
              ),
              Text(controller.state[index].ativado.toString()),
            ],
          ).paddingAll(16.0),
        ),
      ),
    );
  }
}
