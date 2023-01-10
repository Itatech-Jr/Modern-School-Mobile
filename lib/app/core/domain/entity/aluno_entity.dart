class AlunoEntity {
  final int id;
  final String matricula;
  final String nome;
  final double nota;

  AlunoEntity(
      {required this.id,
      required this.matricula,
      required this.nome,
      required this.nota});

  factory AlunoEntity.fromJson(Map<String, dynamic> json) => AlunoEntity(
      id: int.parse(json["id"]),
      matricula: json["matricula"],
      nome: json["nome"],
      nota: double.parse(json["nota"]));

  Map<String, dynamic> toJson() =>
      {"id": id, "matricula": matricula, "nome": nome, "nota": nota};

  AlunoEntity copyWith({int? id, String? matricula, String? nome, double? nota}) => AlunoEntity(
    id: id ?? this.id,
    matricula: matricula ?? this.matricula,
    nome: nome ?? this.nome,
    nota: nota ?? this.nota);
}
