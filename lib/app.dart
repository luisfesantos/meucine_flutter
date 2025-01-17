import 'package:flutter/material.dart';
import 'package:meucine/pages/cinema_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MeuCine",
      initialRoute: "/",
      routes: {
        "/": (_) => const CinemaPage(),
      },
    );
  }
}
