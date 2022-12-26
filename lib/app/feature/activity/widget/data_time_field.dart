import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<StatefulWidget> createState() => _TimePage();
}

class _TimePage extends State<Time> {
  @override
  void initState() {
    super.initState();
  }

  String? time;
  TimeOfDay? pickedTime;

  String? getTime() {
    return pickedTime != null ? pickedTime!.format(context).toString() : null;
  }

  @override
  Widget build(BuildContext context) {
    return fieldWidget(
      width: 120,
      child: GestureDetector(
        onTap: () async {
          pickedTime = await showTimePicker(
            initialTime: TimeOfDay.now(),
            context: context,
          );
          if (pickedTime != null) {
            // Aqui a gente vai descartar este if completo. Na hora de
            // clicar no botão de "salvar" a gente pega essa string do horário.
            // Ta dando problema pq n da pra pegar na hora do async
            // ignore: use_build_context_synchronously
            time = getTime();
            setState(() {});
          }
        },
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 120 * 0.5,
              child: Text(
                time ?? "00:00",
                style: secondaryTextStyle,
              ),
            ),
            const Icon(
              Icons.access_time_filled,
              color: Color.fromARGB(255, 19, 81, 180),
            ),
          ],
        ),
      ),
    );
  }
}
