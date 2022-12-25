class InfoAlunoMaterialEntity {
  final String matter; // Matéria
  final int workload; // Carga Horária
  final int absences; // Faltas
  final double overallAverage; // Média Geral
  final String status;
  final List<double> grades; // Notas

  InfoAlunoMaterialEntity({required this.matter, required this.workload, required this.absences, required this.overallAverage, required this.status,required this.grades});
}