import 'package:flutter/material.dart';
import 'package:invoice_app/features/home/controler/home_controller.dart';
import 'package:invoice_app/features/home/widgets/menus/menu.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(child: Container()),
        ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: Menu.values
                .map((Menu e) => ListTile(
                      title: Text("${e.name}"),
                      onTap: () {
                        context.read()<HomeController>().changeMenu(e);
                        Navigator.pop(context);
                      },
                    ))
                .toList()),
      ],
    );
  }
}
