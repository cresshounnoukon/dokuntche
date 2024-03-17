import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app/features/company/screens/company_page.dart';
import 'package:invoice_app/features/home/controler/home_controller.dart';
import 'package:invoice_app/features/home/screens/home_page.dart';
import 'package:invoice_app/features/invoice/widgets/modals/full_menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeController(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(),



      ),
      themeMode: ThemeMode.light,
      home: CompanyPage(),

    );
  }
}
