import 'package:flutter/material.dart';
import 'package:flutter_application_2/tools/toolclass/cart.dart';
import 'package:flutter_application_2/tools/toolclass/money.dart';
import 'package:provider/provider.dart';

class MultipleProviderState extends StatelessWidget {
  const MultipleProviderState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Money>(
          builder: (context) => Money(),
        ),
        ChangeNotifierProvider<Cart>(
          builder: (context) => Cart(),
        ),
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              onPressed: () {
                cart.cart += 1;
                money.money -= 500;
              },
              child: Icon(Icons.add_shopping_cart),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Multiple Provider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Balance"),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(4)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Money>(
                      builder: (context, money, _) =>
                          Text(money.money.toString()),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              width: 300,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4)),
              child: Consumer<Cart>(
                builder: (context, cart, _) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Apel 400 x " + cart.cart.toString()),
                    Text((400 * cart.cart).toString())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
