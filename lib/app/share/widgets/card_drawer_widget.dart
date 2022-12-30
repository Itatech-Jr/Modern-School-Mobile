import 'package:flutter/material.dart';

Widget cardDrawerWidget({required BuildContext context, required String texto}) {
  return ListTile(
    title: Text(
      texto,
      style: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
      ),
      textAlign: TextAlign.center
    ),
    onTap: () {
      Navigator.pop(context);
    },
  );
}