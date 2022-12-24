class InfoAlunoMaterialEntity {
  final String materia;
  final int cargaHoraria;
  final int faltas;
  final double mediaGeral;
  final String status;
  final List<double> notas;

  InfoAlunoMaterialEntity({required this.materia, required this.cargaHoraria, required this.faltas, required this.mediaGeral, required this.status,required this.notas});
}