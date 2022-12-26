import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_016/card_azul.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_016/controller_aluno.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/save_button_com_icone.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';

import '../../widget/button_widget.dart';
import '../../widget/title_widget.dart';

class ProfTela016 extends StatelessWidget {
  ProfTela016({super.key});
  final ControllerTela016 listaDeAlunos = ControllerTela016();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(
              text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA",
            ),
            const CardTelaAzul016(),
            Column(children: listaDeAlunos.alunos),
            const SaveButtonComIcone(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar"),
                  buttonWidget(text: "Confirmar",backgroundColor: Colors.white),
                ],
              ),
            ),
            
            // Padding(
            //   padding: const EdgeInsets.only(top: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       buttonWidget(text: "Voltar"),
            //       buttonWidget(text: "Confirmar",backgroundColor: Colors.white),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
