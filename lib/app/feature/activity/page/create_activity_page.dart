import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';
import '../widget/create_activity/date_with_time.dart';
import '../widget/create_activity/description.dart';
import '../widget/create_activity/upload_file.dart';
import '../widget/create_activity/evaluation_with_period.dart';
import '../widget/create_activity/active_type_with_weight.dart';

class CreateActivityPage extends StatelessWidget {
  const CreateActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA"),
            const DateWithTime(),
            const ActiveTypeWithWeight(),
            const EvaluationWithPeriod(),
            const UploadFile(),
            const Description(),
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
