import 'package:flutter/material.dart';

import '../../clients/screens/client_create_page.dart';
import '../../clients/widgets/client_list.dart';
import '../../invoice/screens/invoice_create_page.dart';
import '../../invoice/screens/invoice_search_page.dart';
import '../../invoice/widgets/invoice_list.dart';
import '../widgets/menus/menu.dart';
import '../widgets/menus/side_menu.dart';

class HomePage extends StatelessWidget {
  final Menu currentMenu = Menu.Invoices;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${currentMenu.name}"),
        actions: [
          IconButton(
              onPressed: () {
                decidSearchAction(context);
              },
              icon: Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: showWidgetFromCurrentMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          decideAction(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget? showWidgetFromCurrentMenu() {
    print('$currentMenu');
    switch (currentMenu) {
      case Menu.Invoices:
        return InvoiceList();
      case Menu.Clients:
        return ClientList();
      case Menu.Payments:
      // TODO: Handle this case.
      case Menu.Settings:
      // TODO: Handle this case.
    }

    return Text("Choose the right Menu");
  }

  decideAction(context) {
    switch (currentMenu) {
      case Menu.Invoices:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InvoiceCreatePage(),
            ));
      case Menu.Clients:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClientCreatePage(),
            ));
      case Menu.Payments:
      // TODO: Handle this case.
      case Menu.Settings:
      // TODO: Handle this case.
    }
  }

  decidSearchAction(context) {
    switch (currentMenu) {
      case Menu.Invoices:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InvoiceSearchPage(),
            ));
      case Menu.Clients:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InvoiceSearchPage(),
            ));
      case Menu.Payments:
      // TODO: Handle this case.
      case Menu.Settings:
      // TODO: Handle this case.
    }
  }
}
