import 'package:flutter/material.dart';
import 'package:meucine/entidade/cinema.dart';

class CinemaItem extends StatelessWidget {
  final Cinema cinema;

  const CinemaItem({
    super.key,
    required this.cinema,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.all(5),
      child: Material(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.theaters,
              size: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cinema.nome,
                  style: textTheme.headlineMedium,
                ),
                Text(
                  cinema.endereco,
                  style: textTheme.bodyLarge,
                ),
                Text(
                  "Salas: ${cinema.salas}",
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
