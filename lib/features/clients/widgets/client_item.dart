import 'package:flutter/material.dart';

class ClientItem extends StatelessWidget {
  const ClientItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(),
      title: Text("Jorge Row"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("10/23/30"),
          Text("97078697"),
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
