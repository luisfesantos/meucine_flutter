import 'package:flutter/material.dart';
import 'package:meucine/entidade/filme.dart';

class FilmeItem extends StatelessWidget {
  final Filme filme;

  const FilmeItem({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 4,
        left: 4,
        top: 4,
      ),
      child: Material(
        elevation: 5,
        child: Text(
          filme.titulo,
        ),
      ),
    );
  }
}
