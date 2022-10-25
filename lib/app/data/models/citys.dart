// To parse this JSON data, do
//
//     final citys = citysFromJson(jsonString);

import 'dart:convert';

import 'package:ifro/app/data/models/states.dart';

List<Citys> citysFromJson(str) =>
    List<Citys>.from(str.map((x) => Citys.fromJson(x)));

String citysToJson(List<Citys> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Citys {
  Citys({
    this.id,
    this.nome,
    this.estado,
  });

  int? id;
  String? nome;
  States? estado;

  factory Citys.fromJson(Map<String, dynamic> json) => Citys(
        id: json["id"],
        nome: json["nome"],
        estado: States.fromJson(json["estado"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "estado": estado!.toJson(),
      };
}
