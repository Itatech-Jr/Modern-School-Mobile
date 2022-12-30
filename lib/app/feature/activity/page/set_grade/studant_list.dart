import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/page/set_grade/card_student_widget.dart';

class StudentList {
  List<CardStudentWidget> alunos = [];

  StudentList() {
    getStudentTestFromAPI();
  }

  void getStudentTestFromAPI() {
    for (int i = 0; i < 5; i++) {
      AlunoEntity aluno = AlunoEntity(
        id: i,
        matricula: "$i$i$i$i",
        nome: "MARIA MADALENA DE AMARAL $i",
        nota: double.parse("$i"),
      );
      alunos.add(CardStudentWidget(aluno: aluno));
    }
  }
}
