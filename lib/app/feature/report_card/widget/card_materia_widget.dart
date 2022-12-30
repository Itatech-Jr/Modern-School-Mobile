import 'package:flutter/material.dart';

import '../../../core/domain/entity/info_aluno_materia_entity.dart';
import '../../../share/styles/card_style.dart';

Widget cardMateriaWidget({required InfoAlunoMaterialEntity infoAlunMat}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Card(
        color: const Color(0xFFB8D1F7),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                infoAlunMat.matter,
                style: cardAlunoTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${infoAlunMat.workload} Horas",
                    style: cardAlunoTextStyle,
                  ),
                  Text(
                    "${infoAlunMat.absences} faltas",
                    style: cardAlunoTextStyle,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Média geral: ${infoAlunMat.overallAverage.toString().replaceAll('.', ',')}",
                    style: cardAlunoTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    infoAlunMat.status,
                    style: cardAlunoTextStyle.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: infoAlunMat.grades.map((n) {
                  return Column(
                    children: [
                      Text(
                        "U${infoAlunMat.grades.indexOf(n)+1}",
                        style: cardAlunoTextStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                        decoration: const BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(n.toString().replaceAll('.', ','), style: const TextStyle(fontFamily: 'Roboto', color: Colors.white)),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
