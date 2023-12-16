import 'package:flutter/foundation.dart';
import 'package:libreria_sk_examen/models/libro.dart';

class DetallesLibroProvider with ChangeNotifier {
  Libro? _libroSeleccionado;

  Libro? get libroSeleccionado => _libroSeleccionado;

  void seleccionarLibro(Libro libro) {
    _libroSeleccionado = libro;
    notifyListeners();
  }

  void deseleccionarLibro() {
    _libroSeleccionado = null;
    notifyListeners();
  }
}
