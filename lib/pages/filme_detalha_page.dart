import 'package:flutter/material.dart';
import 'package:meucine/componentes/filme_item.dart';
import 'package:meucine/componentes/sessoes_view.dart';
import 'package:meucine/entidade/filme.dart';
import 'package:meucine/vm/filme_vm.dart';
import 'package:meucine/vm/sessao_vm.dart';
import 'package:provider/provider.dart';

class FilmeDetalhePage extends StatelessWidget {
  const FilmeDetalhePage({super.key});

  @override
  Widget build(BuildContext context) {
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
    final filmeVM = Provider.of<FilmeViewModel>(context);
    final filme = filmeVM.getById(filmeId);

    if (filme == null) {
      return emptyBody();
    }

    final sessaoVM = Provider.of<SessaoViewModel>(context);
    final sessoes = sessaoVM.groupedByDate();

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          dadosFilme(filme),
          const SizedBox(
            height: 12,
          ),
          SessoesView(sessoes: sessoes),
        ],
      ),
    );
  }

  Widget dadosFilme(Filme filme) => FilmeItem(filme: filme);
}
