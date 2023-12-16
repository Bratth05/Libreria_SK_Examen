class Libro {
  final String titulo;
  final String autor;
  final String genero;
  final String fechaPublicacion;

  Libro({
    required this.titulo,
    required this.autor,
    required this.genero,
    required this.fechaPublicacion,
  });

  factory Libro.fromJson(Map<String, dynamic> json) {
    return Libro(
      titulo: json['titulo'] ?? '',
      autor: json['autor'] ?? '',
      genero: json['genero'] ?? '',
      fechaPublicacion: json['fechaPublicacion'] ?? '',
    );
  }
}
