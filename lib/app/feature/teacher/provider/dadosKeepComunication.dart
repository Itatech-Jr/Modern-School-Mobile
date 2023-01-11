import 'package:flutter/material.dart';

class Transaction_dados {
  final int number;
  final String matricula;
  final String aluno;
  final bool box;

  static var length;

  Transaction_dados({
    required this.number,
    required this.matricula,
    required this.aluno,
    required this.box,
  });
}
