import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/styles/text_style.dart';
import 'package:modern_school_mobile/app/share/widgets/field_widget.dart';
import '../../../share/widgets/appbar_widget.dart';
import '../../../share/widgets/button_widget.dart';
import '../../../share/widgets/title_widget.dart';
import '../widget/card_blue.dart';
import '../provider/dadosKeepComunication.dart';

class keepComunication extends StatefulWidget {
  @override
  State<keepComunication> createState() => _keepComunicationState();
}

// ignore: camel_case_types
class _keepComunicationState extends State<keepComunication> {
  bool newBoxAluno = false;
  final List<Transaction_dados> transactions = [];

  final _dadosKeepComunications = [
    Transaction_dados(
      number: 1,
      matricula: "6587",
      aluno: " 01MARIA MADALENA DE AMARAL",
      box: false,
      boxResponsavel: false,
    ),
    Transaction_dados(
      number: 2,
      matricula: "6587",
      aluno: "02MARIA MADALENA DE AMARAL",
      box: false,
      boxResponsavel: false,
    ),
    Transaction_dados(
      number: 3,
      matricula: "6587",
      aluno: "03MARIA MADALENA DE AMARAL",
      box: false,
      boxResponsavel: false,
    ),
    Transaction_dados(
      number: 4,
      matricula: "6587",
      aluno: "04MARIA MADALENA DE AMARAL",
      box: false,
      boxResponsavel: false,
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
          children: <Widget>[
            //titulo
            titleWidget(text: "MATEMÁTICA - TURMA 9º ANO A"),
            card_blue(size, "Nº", "Matricula", "Nome do aluno", "Aluno",
                "Responsável"),
            //Começa a lista de alunos
            Column(
              children: _dadosKeepComunications.map((dados) {
                return Card(
                  child: Row(children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: size.width * 0.05,
                            child: Text(
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                                dados.number.toString()),
                          ),
                          SizedBox(
                            width: size.width * 0.12,
                            child: Text(
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                                dados.matricula),
                          ),
                          SizedBox(
                            child: Text(
                                style: const TextStyle(
                                  fontSize: 11,
                                ),
                                dados.aluno),
                          ),
                          SizedBox(
                            width: size.width * 0.20,
                            child: Checkbox(
                              value: dados.box,
                              activeColor: Colors.blue,
                              onChanged: (bool? checked) {
                                setState(() {
                                  _dadosKeepComunications[dados.number - 1] =
                                      dados.copyWith(box: !dados.box);
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            child: Checkbox(
                              value: dados.boxResponsavel,
                              activeColor: Colors.blue,
                              onChanged: (bool? checked) {
                                setState(() {
                                  _dadosKeepComunications[dados.number - 1] =
                                      dados.copyWith(
                                          boxResponsavel:
                                              !dados.boxResponsavel);
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

            //caixa de descrição
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text("Descrição:", style: primaryTextStyle),
                  ),
                  fieldWidget(
                      child: TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: "Descreva algo...",
                          ))),
                ],
              ),
            ),

            //Caixa envio de arquivos
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 20),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child:
                          Text("Envio de arquivos:", style: primaryTextStyle),
                    ),
                    DottedBorder(
                      strokeWidth: 2,
                      color: const Color.fromRGBO(19, 81, 180, 1),
                      dashPattern: [4, 4],
                      child: SizedBox(
                        child: TextFormField(
                          readOnly: true,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Color.fromRGBO(19, 81, 180, 1),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          initialValue: "Selecione o(s) arquivos(s)",
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            prefixIcon: Icon(
                              Icons.file_upload_outlined,
                              color: Color.fromRGBO(19, 81, 180, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Botões parte inferior
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar", backgroundColor: Colors.white),
                  buttonWidget(text: "Confirmar"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
