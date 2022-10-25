import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:ifro/app/data/models/states.dart';
import 'package:ifro/app/modules/home/controller.dart';
import 'package:ifro/app/modules/home/widgets/item.dart';
import 'package:ifro/core/theme/texts_styles.dart';
import 'package:ifro/core/utils/extensions/padding_dif.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => controller.increment()),
        body: SafeArea(
            child: Column(
          children: [
            Center(
                child: Obx(() => Text('${controller.n.value} este é o valor',
                    style: text_title))),
            // Flexible(
            //     child: controller.obx(
            //   (state) => ListView.builder(
            //       itemCount: state.length,
            //       itemBuilder: (context, index) => ItemList(
            //             nome: state[index].nome,
            //             uf: state[index].uf,
            //           )),
            //   onLoading: const CircularProgressIndicator(),
            //   onError: (error) => Text(error!),
            // ))
            controller.obx(
              (state) => DropdownButton<States>(
                items: state.map<DropdownMenuItem<States>>((States value) {
                  return DropdownMenuItem<States>(
                    value: value,
                    child: Text(value.nome!),
                  );
                }).toList(),
                onChanged: (value) => controller.selectState(value),
                value: controller.selected.value,
              ),
            ),
            //Autocomplete
            Flexible(
              child: Obx(() => !controller.load.value
                  ? ListView.builder(
                      itemCount: controller.citys.length,
                      itemBuilder: (context, index) => ItemList(
                            nome: controller.citys[index].nome,
                            uf: controller.citys[index].estado!.uf,
                          ))
                  : const CircularProgressIndicator()),
            )
          ],
        ).defaultPadding));
  }
}
