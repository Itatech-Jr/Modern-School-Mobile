import 'package:flutter/material.dart';
import '../provider/dadosKeepComunication.dart';
import '../widget/checkedBox.dart';

class list_dados extends StatelessWidget {
  final List<Transaction_dados> transactions;
  list_dados(this.transactions);

  @override
  Widget build(BuildContext context) {
    //Map de lista de alunos

    Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final dados = transactions[index];
          return Card(
            child: Row(children: [
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: size.width * 0.1,
                      child: Text(
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          dados.number.toString()),
                    ),
                    SizedBox(
                      width: size.width * 0.12,
                      child: Text(
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          dados.matricula),
                    ),
                    SizedBox(
                      child: Text(
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                          dados.aluno),
                    ),
                    SizedBox(
                      child: checkBoxWidget(checkValue = true),
                    ),
                    SizedBox(
                      child: checkBoxWidget(checkValue = false),
                    ),
                  ],
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
