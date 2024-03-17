import 'package:flutter/cupertino.dart';

import '../widgets/menus/menu.dart';

class HomeController extends ChangeNotifier {
  Menu currenMenu = Menu.Invoices;

  void changeMenu(Menu menu) {
    currenMenu = menu;
    notifyListeners();
  }
}
