class Registro {

  int idRegistro;
  String local;
  String hora = "00:00";

  Registro({this.idRegistro, this.local, this.hora});

  @override
  String toString() {
    return 'Registro{idRegistro: $idRegistro, local: $local, hora: $hora}';
  }
}