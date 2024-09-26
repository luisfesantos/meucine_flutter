import 'package:flutter/material.dart';
import 'package:meucine/componentes/filme_item.dart';
import 'package:meucine/vm/cinema_vm.dart';
import 'package:meucine/vm/filme_vm.dart';
import 'package:meucine/vm/sessao_vm.dart';
import 'package:provider/provider.dart';

class FilmePage extends StatelessWidget {
  const FilmePage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;

    final idCinema = (arguments ?? "0") as String;

    final filmeVM = Provider.of<FilmeViewModel>(context);
    final filmes = filmeVM.filmes;

    final cinemaVM = Provider.of<CinemaViewModel>(context);
    final title = cinemaVM.getById(idCinema)?.nome;

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "Desconhecido"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: filmes.length,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            final sessaoVM =
                Provider.of<SessaoViewModel>(context, listen: false);
            sessaoVM.useFilme(filmes[index].id);

            Navigator.pushNamed(
              context,
              "/filme/detalhe",
              arguments: filmes[index].id,
            );
          },
          child: FilmeItem(
            filme: filmes[index],
          ),
        ),
      ),
    );
  }
}
