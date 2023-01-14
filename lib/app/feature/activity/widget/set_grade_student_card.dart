import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/student_card_components.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class SetGradeStudentCard extends StatelessWidget {
  const SetGradeStudentCard(
      {super.key, required this.student, required this.components});
  final AlunoEntity student;
  final StudentCardComponents components;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 80,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Text(
                "${student.id}",
                textAlign: TextAlign.center,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.25,
              child: Text(
                student.matricula,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.42,
              child: Text(
                student.nome,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: 50,
              child: fieldWidget(
                child: TextFormField(
                  style: primaryTextStyle,
                  controller: components.controller,
                  onChanged: components.inputFormatterAllow,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
