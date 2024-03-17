import 'package:flutter/material.dart';
import 'package:invoice_app/commons/widgets/kinput.dart';
import 'package:invoice_app/commons/widgets/knotfound.dart';
import 'package:invoice_app/features/clients/screens/client_create_page.dart';
import 'package:invoice_app/features/invoice/screens/invoice_detail_page.dart';
import 'package:invoice_app/features/invoice/widgets/invoice_item.dart';

import '../../../commons/widgets/kcontainer.dart';

class InvoiceSearchPage extends StatelessWidget {
  InvoiceSearchPage({super.key});

  List result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KContainer(child: KInput(name: "Invoice Tlo")),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: result.isEmpty
                  ? Container(
                      color: Colors.blue,
                      height: 200,
                      child: KnotFound(
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Text("Add item"),
                        ),
                      ),
                    )
                  : ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: result
                          .map((e) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InvoiceDetailPage(),
                                    ));
                              },
                              child: InvoiceItem()))
                          .toList()),
            )
          ],
        ));
  }
}
