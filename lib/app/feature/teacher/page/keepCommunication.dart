import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modern_school_mobile/app/core/domain/entity/download_material_entity.dart';
import 'package:modern_school_mobile/app/share/widgets/field_widget.dart';
import '../../../share/widgets/appbar_widget.dart';
import '../../../share/widgets/button_widget.dart';
import '../../../share/widgets/title_widget.dart';
import '../widget/card_blue.dart';
import '../provider/dadosKeepComunication.dart';
import '../widget/checkedBox.dart';

class keepComunication extends StatefulWidget {
  @override
  State<keepComunication> createState() => _keepComunicationState();
}

class _keepComunicationState extends State<keepComunication> {
  bool newBoxAluno = false;

  final _dadosKeepComunications = [
    Transaction_dados(
      number: 1,
      matricula: "6587",
      aluno: "MARIA MADALENA DE AMARAL",
      boxAluno: false,
    ),
    Transaction_dados(
      number: 2,
      matricula: "6587",
      aluno: "MARIA MADALENA DE AMARAL",
      boxAluno: false,
    ),
    Transaction_dados(
      number: 3,
      matricula: "6587",
      aluno: "MARIA MADALENA DE AMARAL",
      boxAluno: false,
    ),
    Transaction_dados(
      number: 4,
      matricula: "6587",
      aluno: "MARIA MADALENA DE AMARAL",
      boxAluno: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(text: "MATEMÁTICA - TURMA 9º ANO A"),
            card_blue(size, "Nº", "Matricula", "Nome do aluno", "Aluno",
                "Responsável"),
            Column(
              children: _dadosKeepComunications.map((dados) {
                return Card(
                  child: Row(children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: size.width * 0.1,
                            child: Text(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                dados.number.toString()),
                          ),
                          SizedBox(
                            width: size.width * 0.12,
                            child: Text(
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                dados.matricula),
                          ),
                          SizedBox(
                            child: Text(
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                                dados.aluno),
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: newBoxAluno,
                              activeColor: Colors.blue,
                              onChanged: (bool? checked) {
                                setState(() {
                                  newBoxAluno = !dados.boxAluno;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                );
              }).toList(),
            ),

            fieldWidget(child: TextFormField(maxLines: 5,)),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar", backgroundColor: Colors.white),
                  buttonWidget(text: "Confirmar")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
