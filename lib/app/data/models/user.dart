class User {
  User({this.id, this.bairro, this.endereco, this.numero});
  int? id;
  String? endereco, numero, bairro;

  Map<String, dynamic> toJson() => {
        "endereco": endereco,
        "numero": numero,
        "bairro": bairro,
      };
}
