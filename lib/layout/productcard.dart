import 'package:flutter/material.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4CAF50);

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Card"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
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
                  Text("Bawah")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
