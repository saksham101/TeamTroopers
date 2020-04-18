import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Image.asset('assets/shop.jpg'),

         ],
       ),
      // child: new Text(
      //   "Shop",
      //   style: new TextStyle(fontSize: 30),
      //   ),
    );
  }
}