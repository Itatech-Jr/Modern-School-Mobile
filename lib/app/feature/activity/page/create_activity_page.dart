import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/provider/create_activity_provider.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/check_box_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/drop_down_buttom.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/picker_calendary.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/picker_time_zone.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';
import 'package:provider/provider.dart';
import '../widget/create_activity/description.dart';
import '../widget/create_activity/picker_file.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget(
              text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA",
              backgroundColor: const Color(0xFF9cedff)),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: formFieldWidget(
              width: 180,
              title: "Data de entrega:",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  pickerCalendary(
                    calendary: controller.calendary,
                    onTapDate: () {
                      controller.onTapDate(context);
                    },
                  ),
                  pickerTimeZone(
                    timeZone: controller.timeZone,
                    onTapTime: () {
                      controller.onTapTime(context);
                    },
                  ),
                  const Icon(
                    size: 18,
                    Icons.calendar_month_sharp,
                    color: Color(0xFF1351b4),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                formFieldWidget(
                  width: size.width * 0.6,
                  title: "Tipo de atividade:",
                  child: dropDownButton(
                    dropdownvalue: controller.dropDownValueActive,
                    items: controller.itemsActive,
                    isDense: true,
                    isExpanded: true,
                    underline: const SizedBox(),
                    onChanged: controller.dropDownButtonActive,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                formFieldWidget(
                  title: "Peso:",
                  width: 50,
                  child: TextFormField(
                    style: primaryTextStyle,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                    ),
                    onChanged: controller.weightField,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                formFieldWidget(
                  width: size.width * 0.6,
                  title: "Período:",
                  child: dropDownButton(
                    dropdownvalue: controller.dropDownValuePeriod,
                    items: controller.itemsPeriod,
                    isDense: true,
                    isExpanded: true,
                    underline: const SizedBox(),
                    onChanged: controller.dropDownButtonPeriod,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Text(
                              "Avaliativo:",
                              style: primaryTextStyle,
                            ),
                          ),
                          checkBoxWidget(
                            check: controller.checkedBox,
                            onChanged: controller.checkBoxOnChanged,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          pickerFile(
              onPressed: controller.onPressedFiles,
              title: controller.files != null
                  ? "Arquivos adicionado com sucesso!"
                  : "Selecione o(s) arquivo(s)"),
          description(size),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonWidget(text: "Voltar"),
                buttonWidget(text: "Confirmar", backgroundColor: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
