import 'package:flutter/material.dart';

class InvoiceItem extends StatelessWidget {
  const InvoiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Jorge Row",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Facture #23322 |  10/23/30",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).dividerColor),
          ),
          Text("Livraison ",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).dividerColor)),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("360 USD"),
          Text("Paid"),
        ],
      ),
    );
  }
}
