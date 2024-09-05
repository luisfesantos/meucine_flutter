import 'package:flutter/material.dart';
import 'package:meucine/pages/cinema_page.dart';
import 'package:meucine/pages/filme_detalha_page.dart';
import 'package:meucine/pages/filme_page.dart';
import 'package:meucine/util/tema.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MeuCine",
      theme: tema(),
      initialRoute: "/",
      routes: {
        "/": (_) => const CinemaPage(),
        "/filmes": (_) => const FilmePage(),
        "/filme/detalhe": (_) => const FilmeDetalhaPage(),
      },
    );
  }
}
