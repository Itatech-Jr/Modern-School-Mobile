import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class CardStudentWidget extends StatefulWidget {
  const CardStudentWidget({super.key, required this.aluno});
  final AlunoEntity aluno;

  @override
  State<CardStudentWidget> createState() => _CardStudentWidgetState();
}

class _CardStudentWidgetState extends State<CardStudentWidget> {
  TextEditingController controller = TextEditingController();
  String oldString = "";
  void inputFormatterAllow(String? value) {
    if (value != null && value.isNotEmpty) {
      List<String> char = value.characters.toList();

      if (char[0] == '.') {
        controller.text = oldString;
        return;
      }

      if (value.length > 1 && char[0] == '0' && char[1] != '.' ||
          value.length > 2 && char[2] == '.') {
        controller.text = oldString;
        return;
      }

      for (int i = 0, cont = 0; i < value.length; i++) {
        if (char[i] == ".") cont++;
        if (cont > 1) {
          controller.text = oldString;
          return;
        }
      }
      if (double.parse(value) > 10) {
        controller.text = oldString;
        return;
      }
      oldString = value;
    } else {
      oldString = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Text(
                "${widget.aluno.id}",
                textAlign: TextAlign.center,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.25,
              child: Text(
                widget.aluno.matricula,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.42,
              child: Text(
                widget.aluno.nome,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
                width: size.width * 0.14,
                child: fieldWidget(
                  child: TextFormField(
                    controller: controller,
                    onChanged: inputFormatterAllow,
                    maxLength: 3,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp('[0-9.]'),
                      ),
                    ],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      filled: false,
                      counterText: "",
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
