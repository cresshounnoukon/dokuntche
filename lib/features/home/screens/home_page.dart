import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../clients/screens/client_create_page.dart';
import '../../clients/widgets/client_list.dart';
import '../../invoice/screens/invoice_create_page.dart';
import '../../invoice/screens/invoice_search_page.dart';
import '../../invoice/widgets/invoice_list.dart';
import '../widgets/menus/menu.dart';
import '../widgets/menus/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Menu currentMenu = Menu.Invoices;

  int selectedIndex = 0;

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
      body: IndexedStack(
        index: selectedIndex,
        children: [
          Container(),
          InvoiceList(),
          ClientList(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() => selectedIndex = value),
        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home_1), label: "Accueil"),
          NavigationDestination(icon: Icon(Iconsax.bill), label: "Factures"),
          NavigationDestination(icon: Icon(Iconsax.people), label: "Clients"),
          NavigationDestination(icon: Icon(Iconsax.money), label: "Tresorerie"),
          NavigationDestination(icon: Icon(Iconsax.user), label: "Moi"),
        ],
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
