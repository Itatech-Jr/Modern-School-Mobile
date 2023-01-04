import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/core/domain/entity/info_activities_entity.dart';
import 'package:modern_school_mobile/app/share/styles/colors.dart';

import 'cabecalho_table_widget.dart';
import 'rows_table_widget.dart';

Widget tableActivities({required InfoActivitiesEntity infoActivities, required Map<String, int> atbColumns}) {
  Map<int, dynamic> valueRows = {
    1: [3, infoActivities.typeActivity],
    2: [3, infoActivities.deliveryDate],
    3: [1, infoActivities.peso.toString()],
    4: [2, infoActivities.description],
    5: [2, infoActivities.grades]
  };

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor.shade100),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          cabecalhoTableWidget(atbColumns: atbColumns),
          rowsTableWidget(valueRows: valueRows)
        ],
      ),
    ),
  );
}
