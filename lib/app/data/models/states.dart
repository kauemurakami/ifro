import 'dart:convert';

List<States> statesFromJson(str) =>
    List<States>.from(str.map((x) => States.fromJson(x)));

//sem get connect
// List<States> statesFromJson(String str) =>
//     List<States>.from(json.decode(str).map((x) => States.fromJson(x)));

String statesToJson(List<States> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class States {
  States({
    this.id,
    this.nome,
    this.uf,
  });

  int? id;
  String? nome, uf;

  factory States.fromJson(Map<String, dynamic> json) => States(
        id: json["id"],
        nome: json["nome"],
        uf: json["uf"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "uf": uf,
      };
}
