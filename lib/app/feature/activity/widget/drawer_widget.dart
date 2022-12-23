import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../share/colors.dart';
import 'card_drawer_widget.dart';

Drawer drawerWidget({required BuildContext context, required List<String> listMenu}) {
  return Drawer(
    backgroundColor: primaryColor,
    child: Column(
      children: [
        SizedBox(
          height: 70,
          child: DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/img/logo.png"),
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.xmark),
                    color: Colors.white,
                    alignment: Alignment.topRight,
                    onPressed: () => Navigator.of(context).pop())
              ],
            ),
          ),
        ),
        SizedBox(height: 50),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => cardDrawerWidget(context: context, texto: listMenu[index]),
          separatorBuilder: (context, index) => SizedBox(height: 25),
          itemCount: listMenu.length,
        )
      ],
    ),
  );
}
