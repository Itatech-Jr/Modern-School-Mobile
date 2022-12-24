import 'package:flutter/material.dart';

import '../../../core/domain/entity/info_aluno_materia_entity.dart';
import '../../../share/colors.dart';

Widget cardMateriaWidget({required InfoAlunoMaterialEntity infoAlunMat}) {
  return Card(
    color: Color(0xFFB8D1F7),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            infoAlunMat.materia,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${infoAlunMat.cargaHoraria} Horas",
                style: TextStyle(color: primaryColor),
              ),
              Text(
                "${infoAlunMat.faltas} faltas",
                style: TextStyle(color: primaryColor),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Média geral: ${infoAlunMat.mediaGeral.toString().replaceAll('.', ',')}",
                style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
              ),
              Text(
                infoAlunMat.status,
                style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: infoAlunMat.notas.map((n) {
                return Column(
                  children: [
                    Text(
                      "U${infoAlunMat.notas.indexOf(n)+1}",
                      style: TextStyle(color: primaryColor),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Text(n.toString(), style: TextStyle(color: Colors.white)),
                    )
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ),
  );
}
