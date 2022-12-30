import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/page/set_grade/screen_blue_card.dart';
import 'package:modern_school_mobile/app/feature/activity/page/set_grade/studant_list.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/save_button_com_icone.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';

import '../../widget/button_widget.dart';
import '../../widget/title_widget.dart';

class SetGrade extends StatelessWidget {
  SetGrade({super.key});
  final StudentList studentList = StudentList();

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
            const ScreenBlueCard(),
            Column(children: studentList.alunos),
            const SaveButtonWithIcone(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar"),
                  buttonWidget(
                      text: "Confirmar", backgroundColor: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
