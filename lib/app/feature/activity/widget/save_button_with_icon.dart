import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

Widget saveButtonWithIcon({VoidCallback? onPressed}) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, right: 30),
    child: SizedBox(
      width: 100,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children:  [
            const Icon(
              Icons.save,
              color: Color(0xFF0C326F),
              size: 35,
            ),
            Text(
              "Salvar",
              style: primaryTextStyle.copyWith(color: const Color(0xFF0C326F)),
            ),
          ],
        ),
      ),
    ),
  );
}
