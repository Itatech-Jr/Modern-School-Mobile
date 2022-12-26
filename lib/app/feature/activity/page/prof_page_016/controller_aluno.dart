import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_016/card_tela_016.dart';

class ControllerTela016 {
  //changeNotFyer?
  List<CardTela016> alunos = [];

  ControllerTela016() {
    pegarAlunosDaAPI();
  }

  void pegarAlunosDaAPI() {
    for (int i = 0; i < 5; i++) {
      AlunoEntity aluno = AlunoEntity(
        id: i,
        matricula: "$i$i$i$i",
        nome: "MARIA MADALENA DE AMARAL $i",
        nota: double.parse("$i"),
      );
      alunos.add(CardTela016(aluno: aluno));
    }
    
  }
}
