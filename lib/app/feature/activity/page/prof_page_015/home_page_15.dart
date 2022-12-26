import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_015/data_entrega_com_horario.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_015/descricao.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_015/envio_de_arquivo.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_015/periodo_com_avaliativo.dart';
import 'package:modern_school_mobile/app/feature/activity/page/prof_page_015/tipo_atividade_e_peso.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/appbar_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/button_widget.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/title_widget.dart';

class ProfTela015 extends StatelessWidget {
  const ProfTela015({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            titleWidget(
              text: "TURMA 9º ANO A COMPONENTES: MATEMÁTICA",
            ),
            const DataEntregaComHorario(),
            const TipoAtividadePeso(),
            const PeriodoComAvaliativo(),
            const EnvioDeArquivo(),
            const Descricao(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonWidget(text: "Voltar"),
                  buttonWidget(text: "Confirmar",backgroundColor: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
