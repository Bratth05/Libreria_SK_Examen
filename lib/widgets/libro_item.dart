import 'package:flutter/material.dart';
import 'package:libreria_sk_examen/models/libro.dart';

class LibroItem extends StatelessWidget {
  final Libro libro;

  LibroItem({required this.libro});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(libro.titulo),
      subtitle:
          Text('${libro.autor} - ${libro.genero} - ${libro.fechaPublicacion}'),
      onTap: () {
        // se agrega la pantalla de detalles
      },
    );
  }
}
