import 'package:get/get.dart';
class RxMyModel {

  final id = 0.obs;
  final nome = 'nome'.obs;
}
class MyModel {
  MyModel({ id, nome });

final rx = RxMyModel();

get nome => rx.nome.value;
set nome(value) => rx.nome.value = value;

get id => rx.id.value;
set id(value) => rx.id.value = value;

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.nome = json['nome'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    return data;
  }
}