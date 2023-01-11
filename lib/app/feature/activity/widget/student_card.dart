import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modern_school_mobile/app/core/domain/entity/aluno_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/student_card_components.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, required this.aluno, required this.components});
  final AlunoEntity aluno;
  final StudentCardComponents components;

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
                "${aluno.id}",
                textAlign: TextAlign.center,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.25,
              child: Text(
                aluno.matricula,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.42,
              child: Text(
                aluno.nome,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: primaryTextStyle,
              ),
            ),
            SizedBox(
              width: size.width * 0.14,
              child: fieldWidget(
                child: TextFormField(
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
