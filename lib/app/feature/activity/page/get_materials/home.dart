import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modern_school_mobile/app/core/domain/entity/info_activities_entity.dart';
import 'package:modern_school_mobile/app/share/widgets/appbar_widget.dart';
import 'package:modern_school_mobile/app/share/widgets/button_widget.dart';
import 'package:modern_school_mobile/app/share/widgets/title_widget.dart';

import 'table_activities.dart';

class GetMaterials extends StatelessWidget {
  const GetMaterials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, int> atbColumns = {"Tipo de atividade": 3, "Data de entrega": 3, "Peso": 1, "Descrição": 2, "Notas": 2};

    InfoActivitiesEntity infoActivities1 = InfoActivitiesEntity("Seminario", "11/11/2010", 5, "A", "A");
    InfoActivitiesEntity infoActivities2 = InfoActivitiesEntity("Mini prova", "11/11/2010", 5, "A", "A");

    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: appbarWidget(),
        body: Column(
          children: [
            titleWidget(text: "TURMA 9° ANO B - MATUTINO : MATEMÁTICA"),
            tableActivities(infoActivities: infoActivities1, atbColumns: atbColumns)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0XFF0C326F),
          onPressed: () {},
          shape: const StadiumBorder(
              side: BorderSide(
                  color: Color(0XFF0C326F), width: 2)),
          child: FaIcon(FontAwesomeIcons.plus),
        ),
      ),
    );
  }
}

