import 'package:flutter/foundation.dart';
import 'package:meucine/entidade/sessao.dart';
import 'package:meucine/repositorio/repositorio_sessao.dart';
import 'package:provider/provider.dart';

class SessaoViewModel extends ChangeNotifier {
  List<Sessao> _sessoes = <Sessao>[];

  SessaoViewModel useFilme(String filmeId) {
    final repositorio = RepositorioSessao();
    _sessoes = repositorio.select(filmeId);
    notifyListeners();

    return this;
  }

  List<Sessao> get sessoes => _sessoes;

  static ChangeNotifierProvider<SessaoViewModel> novo() =>
      ChangeNotifierProvider(create: (_) => SessaoViewModel());
}
