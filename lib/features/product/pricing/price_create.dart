import 'package:flutter/material.dart';

import '../../../commons/widgets/kinput.dart';

class Price_create extends StatelessWidget {
  const Price_create({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: KInput(
                  name: "Min Qty",
                  keyboardType: TextInputType.number,
                  initialValue: '0',
                ),
              ),
              SizedBox(
                width: 10 * 2.5,
              ),
              Expanded(
                child: KInput(
                  name: "Max Qty",
                ),
              ),
            ],
          ),
          KInput(
            name: "Price ",
            keyboardType: TextInputType.name,
          ),
        ],
      ),
    );
  }
}
