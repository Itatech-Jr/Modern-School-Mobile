import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/provider/create_activity_controller.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/date_with_time.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';
import '../widget/create_activity/description.dart';
import '../widget/create_activity/upload_file.dart';
import '../widget/create_activity/evaluation_with_period.dart';
import '../widget/create_activity/active_type_with_weight.dart';

class CreateActivityPage extends StatelessWidget {
  const CreateActivityPage({super.key, required this.controller});
  final CreateActivityController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA"),
            dateWithTimeWidget(
                dataTimeField: controller.dataTimeField,
                time: controller.time,
                size: size,
                onTapDate: () async{
                  controller.onTapDate(context);
                },
                onTapTime: () async{
                  controller.onTapTime(context);
                },
              ),
            activeTypeWithWeight(size: size),
            evaluationWithPeriod(
              size: size,
              checkbox: controller.checkBoxWidget(),
            ),
            uploadFile(size: size),
            description(size),
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
