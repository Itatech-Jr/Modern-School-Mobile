import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/provider/create_activity_provider.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/date_with_time.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';
import 'package:provider/provider.dart';
import '../widget/create_activity/description.dart';
import '../widget/create_activity/upload_file.dart';
import '../widget/create_activity/evaluation_with_period.dart';
import '../widget/create_activity/active_type_with_weight.dart';

class CreateActivityPage extends StatelessWidget {
  const CreateActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CreateActivityProvider controller = context.watch<CreateActivityProvider>();
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: Column(
        children: [
          titleWidget(text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA"),
          dateWithTimeWidget(
            dataTimeField: controller.dataTimeField,
            time: controller.time,
            size: size,
            onTapDate: () async {
              controller.onTapDate(context);
            },
            onTapTime: () async {
              controller.onTapTime(context);
            },
          ),
          activeTypeWithWeight(size: size),
          evaluationWithPeriod(
            size: size,
            checkbox: controller.checkBoxWidget(),
          ),
          uploadFile(
              size: size,
              file: controller.getFiles,
              title: controller.files != null
                  ? "Arquivos adicionado com sucesso!"
                  : "Selecione o(s) arquivo(s)"),
          description(size),
          Expanded(
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
    );
  }
}
