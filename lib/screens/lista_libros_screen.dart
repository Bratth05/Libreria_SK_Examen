import 'package:flutter/material.dart';
import 'package:libreria_sk_examen/providers/libros_provider.dart';
import 'package:libreria_sk_examen/widgets/libro_item.dart';
import 'package:provider/provider.dart';

class ListaLibrosScreen extends StatefulWidget {
  @override
  _ListaLibrosScreenState createState() => _ListaLibrosScreenState();
}

class _ListaLibrosScreenState extends State<ListaLibrosScreen> {
  LibrosProvider librosProvider = LibrosProvider();

  @override
  void initState() {
    super.initState();
    librosProvider.cargarLibros();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: Consumer<LibrosProvider>(
        builder: (context, librosProvider, _) {
          if (librosProvider.libros.isEmpty) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: librosProvider.libros.length,
              itemBuilder: (context, index) {
                return LibroItem(libro: librosProvider.libros[index]);
              },
            );
          }
        },
      ),
    );
  }
}
