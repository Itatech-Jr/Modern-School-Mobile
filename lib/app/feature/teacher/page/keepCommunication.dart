import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modern_school_mobile/app/core/domain/entity/download_material_entity.dart';
import 'package:modern_school_mobile/app/feature/teacher/widget/list_dados.dart';
import 'package:modern_school_mobile/app/share/styles/text_style.dart';
import 'package:modern_school_mobile/app/share/widgets/field_widget.dart';
import '../../../share/widgets/appbar_widget.dart';
import '../../../share/widgets/button_widget.dart';
import '../../../share/widgets/title_widget.dart';
import '../widget/card_blue.dart';
import '../provider/dadosKeepComunication.dart';
import '../widget/checkedBox.dart';
import '../widget/form_field_widget.dart';

class keepComunication extends StatefulWidget {
  @override
  State<keepComunication> createState() => _keepComunicationState();
}

class _keepComunicationState extends State<keepComunication> {
  bool newBoxAluno = false;
  final List<Transaction_dados> transactions = [];
  
  final _dadosKeepComunications = [
      Transaction_dados(
        number: 1,
        matricula: "6587",
        aluno: "MARIA MADALENA DE AMARAL",
        box: false,
      ),
      Transaction_dados(
        number: 2,
        matricula: "6587",
        aluno: "MARIA MADALENA DE AMARAL",
        box: false,
      ),
      Transaction_dados(
        number: 3,
        matricula: "6587",
        aluno: "MARIA MADALENA DE AMARAL",
        box: false,
      ),
      Transaction_dados(
        number: 4,
        matricula: "6587",
        aluno: "MARIA MADALENA DE AMARAL",
        box: false,
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

            list_dados(transactions),

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
                      margin: EdgeInsets.only(bottom: 10),
                      child:
                          Text("Envio de arquivos:", style: primaryTextStyle),
                    ),
                    SizedBox(
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
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(19, 81, 180, 1)),
                          ),
                          isCollapsed: true,
                          prefixIcon: Icon(
                            Icons.file_upload_outlined,
                            color: Color.fromRGBO(19, 81, 180, 1),
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
