import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/core/domain/entity/material_entity.dart';
import 'package:modern_school_mobile/app/share/colors.dart';
import '../../../share/card_style.dart';

Widget materialCardWidget({required MaterialEntity entity}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 3,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(entity.titulo, style: titleCardStyle),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.attach_file,size: 20),
                  Text.rich(
                    TextSpan(
                      text: 'Arquivo de auxílio: ',
                      children: [
                        TextSpan(
                          text: entity.nomeArquivo,
                          style: const TextStyle(color: Colors.blue, fontSize: 14,decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Icon(Icons.download, size: 20,color: primaryColor),
            ],
          ),
          const SizedBox(height: 5),
          Text('Aluno: ${entity.statusAluno}', style: descriptionCardStyle),
        ],
      ),
    ),
  );
}
