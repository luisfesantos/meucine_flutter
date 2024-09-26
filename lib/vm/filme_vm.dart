import 'package:flutter/foundation.dart';
import 'package:meucine/entidade/filme.dart';
import 'package:meucine/repositorio/repositorio_filme.dart';
import 'package:provider/provider.dart';

class FilmeViewModel extends ChangeNotifier {
  late List<Filme> filmes;

  Filme? getById(String id) {
    return filmes.where((f) => f.id == id).firstOrNull;
  }

  FilmeViewModel useLista(List<Filme> filmes) {
    this.filmes = filmes;
    notifyListeners();
    return this;
  }

  void useCinema(String id) {
    filmes = RepositorioFilme().select(id);
    notifyListeners();
  }

  static ChangeNotifierProvider<FilmeViewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => FilmeViewModel().useLista([]),
      );
}