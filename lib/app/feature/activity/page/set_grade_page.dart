import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/blue_card.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/studant_list.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/save_button_with_icon.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';

import '../widget/button_widget.dart';
import '../widget/title_widget.dart';

class SetGradePage extends StatelessWidget {
  SetGradePage({super.key});
  final StudentList studentList = StudentList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              titleWidget(
                text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA",
              ),
              blueCard(size),
      
              Column(children: studentList.alunos),
              
              saveButtonWithIcone(onPressed: () {
                debugPrint("Queijo ralado");
              }),
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
      ),
    );
  }
}
