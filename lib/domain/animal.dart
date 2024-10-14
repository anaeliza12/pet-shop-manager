class Animal {
  String? name;
  String? raca;
  String? idade;

  Animal({this.name, this.raca, this.idade});

  Animal.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    raca = json['raca'];
    idade = json['idade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['raca'] = raca;
    data['idade'] = idade;
    return data;
  }
}