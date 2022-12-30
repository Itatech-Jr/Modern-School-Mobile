import 'package:flutter/material.dart';

class SaveButtonWithIcone extends StatefulWidget {
  const SaveButtonWithIcone({super.key});

  @override
  State<SaveButtonWithIcone> createState() => Save();
}

class Save extends State<SaveButtonWithIcone> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextButton(
        onPressed: () {},
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
}
