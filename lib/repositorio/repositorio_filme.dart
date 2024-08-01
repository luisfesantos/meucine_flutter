import 'package:meucine/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select() {
    return <Filme>[
      Filme(
        titulo: "Divertidamente 2",
        poster:
            "https://cinemark.com.br/_next/image?url=https%3A%2F%2Fcdnim.prd.cineticket.com.br%2Fasset%2Fmovie%2F8294%2Fdivertida-mente-2-poster-desktop-5923c.jpeg&w=1920&q=100",
        sinopse:
            "Divertida Mente 2, da Disney e Pixar, volta a entrar na mente da agora adolescente Riley, no momento em que a Sala de Comando passa por uma repentina demolição para dar lugar a algo totalmente inesperado: novas Emoções.",
        duracao: 96,
        classificacao: "Livre",
      ),
      Filme(
        titulo: "Deadpool e Wolverine",
        poster: "https://lumiere-a.akamaihd.net/v1/images/tidalwave_payoff_poster_brazil_caf2354b.jpeg",
        sinopse: "Deadpool e Wolverine retornam ao cinema.",
        duracao: 127,
        classificacao: "18",
      ),
    ];
  }
}
