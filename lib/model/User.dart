class User {
  final String nombre;
  final String apellido;

  User({this.nombre, this.apellido});

  factory User.fromJson(Map<String, dynamic> json) {
    for (int i = 0; i < json.length; i++) {
      return User(
        nombre: json['results'][i]['name']['first'],
        apellido: json['name'][i]['name']['last'],
      );
    }
  }
}
