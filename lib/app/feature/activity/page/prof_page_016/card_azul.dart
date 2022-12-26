import 'package:flutter/material.dart';

class CardTelaAzul016 extends StatefulWidget {
  const CardTelaAzul016({super.key, required});
  

  @override
  State<CardTelaAzul016> createState() => _CardTelaAzul016State();
}

class _CardTelaAzul016State extends State<CardTelaAzul016> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Card(
        color: const Color(0xFFB8D1F7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              child: Text(
                "Nº",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1351B4),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.25,
              child: const Text(
                "Matrícula",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1351B4),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.45,
              child: const Text(
                "Nome",
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  color: Color(0xFF1351B4),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
                width: size.width * 0.12,
                child: const Text(
                  "Notas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1351B4),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
