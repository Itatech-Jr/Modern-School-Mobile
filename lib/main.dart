import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/core/domain/entity/download_material_entity.dart';
import 'app/share/widgets/appbar_widget.dart';
import 'app/feature/teacher/page/keep_communication.dart';
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
      home: keepComunication(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DownloadMaterialEntity entity = const DownloadMaterialEntity(
      titulo:
          'Estudo do livro “A Moreninha  de  Joaquin Manuel de Macedo” - [21/05/2022]',
      nomeArquivo: "nome_do_arquivo.pdf",
      linkArquvo: "",
      statusAluno: "Presente");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: appbarWidget(),
      ),
    );
  }
}
