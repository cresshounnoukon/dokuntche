import 'package:flutter/material.dart';
import 'package:invoice_app/features/invoice/screens/invoice_detail_page.dart';
import 'package:invoice_app/features/invoice/widgets/invoice_item.dart';

class InvoiceList extends StatelessWidget {
  const InvoiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InvoiceDetailPage(),));
          },
          child: InvoiceItem(),
        ),
        InkWell(
          onTap: () {},
          child: InvoiceItem(),
        ),
        InkWell(
          onTap: () {},
          child: InvoiceItem(),
        )
      ],
    );
  }
}
