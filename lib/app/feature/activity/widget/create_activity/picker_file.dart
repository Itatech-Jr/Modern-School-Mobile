import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../../share/text_style.dart';

Widget pickerFile({required VoidCallback onPressed, required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Envio de arquivos:", style: primaryTextStyle),
        dashedBorder(
          color: const Color(0xFF155bcb),
          child: TextButton(
            onPressed: onPressed,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Icon(
                    Icons.upload,
                    color: Color(0xFF155bcb),
                  ),
                ),
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    color: const Color(0xFF155bcb),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget dashedBorder({
  Color color = Colors.black,
  double strokeWidth = 2,
  List<double> pattern = const [6, 4],
  StrokeCap strokeCap = StrokeCap.butt,
  required Widget child,
}) {
  return DottedBorder(
    color: color,
    strokeWidth: strokeWidth,
    dashPattern: pattern,
    strokeCap: strokeCap,
    child: child,
  );
}
