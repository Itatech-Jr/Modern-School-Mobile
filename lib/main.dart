import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/core/domain/entity/material_entity.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/create_activity/form_field_widget.dart';
import 'app/feature/activity/widget/appbar_widget.dart';
import 'app/feature/activity/widget/add_floating_action_button_widget.dart';
import 'app/feature/activity/widget/create_activity/data_entrega_com_horario.dart';
import 'app/feature/activity/widget/field_widget.dart';
import 'app/feature/activity/widget/material_card_widget.dart';
import 'app/feature/activity/widget/title_widget.dart';

//arch: https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern School',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MaterialEntity entity =
      const MaterialEntity(titulo: 'Estudo do livro “A Moreninha  de  Joaquin Manuel de Macedo” - [21/05/2022]', nomeArquivo: "nome_do_arquivo.pdf", linkArquvo: "", statusAluno: "Presente");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: appbarWidget(),
        body: DataEntregaComHorario(),
      ),
    );
  }
}
