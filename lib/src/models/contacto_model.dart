class Contacto {
  String nombre;
  String telefono;

  Contacto({String nombre, String telefono}) {
    this.nombre = nombre;
    this.telefono = telefono;
  }

  Contacto.fromJson(Map<String, String> datos) {
    this.nombre = datos['nombre'];
    this.telefono = datos['telefono'];
  }
}
