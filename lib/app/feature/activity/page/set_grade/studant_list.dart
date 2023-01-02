import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/page/set_grade/student_card.dart';

class StudentList {
  List<StudentCard> alunos = [];

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
      alunos.add(StudentCard(aluno: aluno));
    }
  }
}
