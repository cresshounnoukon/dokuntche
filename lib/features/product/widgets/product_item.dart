import 'package:flutter/material.dart';
import 'package:invoice_app/commons/widgets/kTextgray.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(child: Text("LJ")),
        title: Text("Lait Javo"),
        subtitle: KtextGray("Produit Laitier"),
        trailing: Column(
          children: [
            Icon(
              Icons.outbond_outlined,
              color: Colors.green,
            ),
            KtextGray("20")
          ],
        ));
  }
}
