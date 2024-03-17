import 'package:flutter/material.dart';
import 'package:invoice_app/commons/widgets/ktabView.dart';
import 'package:invoice_app/features/product/pricing/price_create.dart';

import '../../../commons/widgets/kcontainer.dart';
import '../../../commons/widgets/kelevatedbutton.dart';
import '../../../commons/widgets/kinput.dart';

class ProductCreatePage extends StatefulWidget {
  const ProductCreatePage({super.key});

  @override
  State<ProductCreatePage> createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Creation"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: ListView(
        children: [
          Form(
            child: Column(
              children: [
                KContainer(
                  title: "Product Details",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KInput(
                        name: "Name ",
                        keyboardType: TextInputType.name,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: KInput(
                              name: "Unité de mesure",
                              keyboardType: TextInputType.number,
                              initialValue: '0',
                            ),
                          ),
                          SizedBox(
                            width: 10 * 2.5,
                          ),
                          Expanded(
                            child: KInput(
                              name: "Category",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                KContainer(
                  title: "Pricing Details",
                  child: Column(
                    children: [
                      KtabView(),
                      Price_create(),
                  //    ElevatedButton(onPressed: showsheet, child: Text("AAA"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: KElevatedButton(
          child: Text(
            "Add client",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {

          },
        ),
      ),
    );
    ;
  }


}
