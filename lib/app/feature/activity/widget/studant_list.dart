import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/student_card.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/student_card_components.dart';

class StudentList {
  List<StudentCard> alunos = [];

  StudentList() {
    getStudentTestFromAPI();
  }

  void getStudentTestFromAPI() {
    for (int i = 0; i < 15; i++) {
      AlunoEntity aluno = AlunoEntity(
        id: i,
        matricula: "$i$i$i$i",
        nome: "MARIA MADALENA DE AMARAL $i",
        nota: double.parse("$i"),
      );
      int fixDecimal = 1;
      if (aluno.nota >= 10) {
        aluno = aluno.copyWith(nota: 10);
        fixDecimal = 0;
      }

      StudentCardComponents studant = StudentCardComponents();
      studant.controller.text = aluno.nota.toStringAsFixed(fixDecimal);
      studant.oldString = aluno.nota.toStringAsFixed(fixDecimal);

      alunos.add(StudentCard(
        aluno: aluno,
        components: studant,
      ));
    }
  }
}
