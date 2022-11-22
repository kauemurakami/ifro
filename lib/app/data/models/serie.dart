// To parse this JSON data, do
//
//     final serie = serieFromJson(jsonString);

import 'dart:convert';

List<Serie> serieFromJson(str) =>
    List<Serie>.from(str.map((x) => Serie.fromJson(x)));

String serieToJson(List<Serie> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Serie {
  Serie({this.nome, this.ativado, this.id, this.createdAt, this.updatedAt});

  String? nome, id;
  String? createdAt, updatedAt;
  bool? ativado;

  factory Serie.fromJson(Map<String, dynamic> json) => Serie(
        nome: json["nome"],
        id: json["id"],
        ativado: json["ativado"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "ativado": ativado,
      };
}
