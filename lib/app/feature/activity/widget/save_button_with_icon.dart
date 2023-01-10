import 'package:flutter/material.dart';

Widget saveButtonWithIcone({VoidCallback? onPressed}) {
  return SizedBox(
    width: 100,
    child: TextButton(
      onPressed: onPressed,
      child: Row(
        children: const [
          Icon(
            Icons.save,
            color: Color(0xFF0C326F),
            size: 35,
          ),
          Text(
            "Salvar",
            style: TextStyle(
              color: Color(0xFF0C326F),
              fontSize: 16,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
