import 'package:flutter/material.dart';

class FilmeDetalhaPage extends StatelessWidget {
  const FilmeDetalhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    final arguments = ModalRoute.of(context)?.settings.arguments;
    final filmeId = arguments == null ? "" : arguments as String;

    return Scaffold(
      body: filmeId.isEmpty ? emptyBody() : body(context, filmeId),
    );
  }

  Widget emptyBody() => const Center(
        child: Text("Nenhum filme selecionado! Volte e selecione."),
      );

  Widget body(BuildContext context, String filmeId) {
    return Container();
  }
}
