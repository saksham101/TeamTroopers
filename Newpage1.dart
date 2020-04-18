// import 'package:aid/Aid_Home.dart';
import 'package:flutter/material.dart';

class Newpage1 extends StatelessWidget {
  final String title;
  Newpage1(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
           appBar: new AppBar(
         title:   new Text(" My Wallet",textAlign: TextAlign.center,),
          // actions: <Widget>[
          //   IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          //     debugPrint('Wallet');
          //        Navigator.push(context, MaterialPageRoute(builder: (context){
          //          return AidHome();
          //   }));
          //   }),
          //   ],
       ),
       body: new Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Image.asset('assets/mywallet.jpg'),

         ],
       ),
    );
  }
}