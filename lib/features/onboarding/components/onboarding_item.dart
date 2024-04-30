import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:invoice_app/commons/widgets/k_default_layout.dart';

import '../../../style/e_style.dart';

class OnboardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final IconData? iconData;
  final bool isReversed;

  final Widget? action;

  OnboardingItem(
      {super.key,
      required this.title,
      this.iconData,
      required this.image,
      this.action,
      this.isReversed = false,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return KDefaultLayout(
        title: "DUDUTCHÉ 🇧🇯",
        subtitle: "Mon Gagne Pain du quotidien",
        imagePath: image,
        isReversed: isReversed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: PADDING * 5,
            ),
            Row(
              children: [
                Icon(
                  iconData ?? Iconsax.user,
                  size: 70,
                  color: Colors.black45,
                ),
                SizedBox(
                  width: PADDING * 2,
                ),
                Expanded(
                  child: Text("$title",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: PADDING * 5,
            ),
            Text("$description",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
            SizedBox(
              height: PADDING * 2,
            ),
            action ?? Container()
          ],
        ));
  }
}
