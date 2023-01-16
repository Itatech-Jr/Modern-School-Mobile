
// ignore: camel_case_types
class Transaction_dados {
  final int number;
  final String matricula;
  final String aluno;
  final bool box;
  final bool boxResponsavel;

  Transaction_dados({
    required this.number,
    required this.matricula,
    required this.aluno,
    required this.box,
    required this.boxResponsavel,
  });

  Transaction_dados copyWith(
  {
    int? number,
    String? matricula,
    String? aluno,
    bool? box,
    bool? boxResponsavel,
  }
  ) {
    return Transaction_dados(
      number: number??this.number,
      matricula: matricula??this.matricula,
      aluno: aluno??this.aluno,
      box: box??this.box,
      boxResponsavel: boxResponsavel??this.boxResponsavel,
    );
  }
}
