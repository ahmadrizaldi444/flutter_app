import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4CAF50);

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;

  ProductCard({this.productName = "", this.price = ""});

  TextStyle _textStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Card"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ChangeNotifierProvider<ProductProvider>(
          builder: (context) => ProductProvider(),
          child: Stack(
            children: [
              AnimatedContainer(
                width: 130,
                height: 320,
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: secondColor,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.5))
                    ],
                    borderRadius: BorderRadius.circular(8)),
                duration: Duration(seconds: 1),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Diskon 10%",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          blurRadius: 6,
                          offset: Offset(3, 1)),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://media.ed.edmunds-media.com/lamborghini/huracan/2020/oem/2020_lamborghini_huracan_coupe_evo_fq_oem_7_1600.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          productName,
                          style: _textStyle,
                        ),
                        Text(
                          price,
                          style: _textStyle.copyWith(color: secondColor),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: firstColor, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                color: firstColor,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              Consumer<ProductProvider>(
                                builder: (context, provider, _) => Text(
                                  provider._quantity.toString(),
                                  style: _textStyle,
                                ),
                              ),
                              Consumer<ProductProvider>(
                                builder: (ontext, provider, _) =>
                                    GestureDetector(
                                  onTap: () {
                                    provider.quantity++;
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    color: firstColor,
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 140,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                            color: firstColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16))),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductProvider with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
    notifyListeners();
  }
}
