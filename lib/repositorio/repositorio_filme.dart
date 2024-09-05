import 'package:meucine/entidade/filme.dart';

class RepositorioFilme {
  List<Filme> select(String id) {
    if (id == "1") {
      return <Filme>[
        Filme(
          titulo: "Divertidamente 2",
          poster:
              "https://m.media-amazon.com/images/M/MV5BNTI2YmJmOWYtZmM5NC00NzMwLTk2ZTctMDBiNmFlMmFmNTg5XkEyXkFqcGc@._V1_FMjpg_UY12000_.jpg",
          sinopse:
              "Divertida Mente 2, da Disney e Pixar, volta a entrar na mente da agora adolescente Riley, no momento em que a Sala de Comando passa por uma repentina demolição para dar lugar a algo totalmente inesperado: novas Emoções.",
          duracao: 96,
          classificacao: "Livre",
        ),
        Filme(
          titulo: "Deadpool e Wolverine",
          poster:
              "https://m.media-amazon.com/images/M/MV5BNTI2NjY3ZTMtOTY3Ni00MjRiLWJjOGUtZTVmNDNmY2U5N2JiXkEyXkFqcGc@._V1_FMjpg_UY3704_.jpg",
          sinopse: "Deadpool e Wolverine retornam ao cinema.",
          duracao: 127,
          classificacao: "18",
        ),
      ];
    }

    return <Filme>[
      Filme(
        titulo: "Divertidamente 2",
        poster:
            "https://m.media-amazon.com/images/M/MV5BNTI2YmJmOWYtZmM5NC00NzMwLTk2ZTctMDBiNmFlMmFmNTg5XkEyXkFqcGc@._V1_FMjpg_UY12000_.jpg",
        sinopse:
            "Divertida Mente 2, da Disney e Pixar, volta a entrar na mente da agora adolescente Riley, no momento em que a Sala de Comando passa por uma repentina demolição para dar lugar a algo totalmente inesperado: novas Emoções.",
        duracao: 96,
        classificacao: "Livre",
      ),
    ];
  }
}
