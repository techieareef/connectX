
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'main.dart';
////@@@@@@@@@@@@@@@@@@@@@@@@@for testing more / less button widget
//void main() => runApp( MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return  MaterialApp(
//      title: 'Flutter Demo',
//      home:  HomeScreen(),
//    );
//  }
//}
//
//class HomeScreen extends StatelessWidget {
//
//@override
//Widget build(BuildContext context) {
//return  Scaffold(
//appBar:  AppBar(
//title:  Text('Title'),
//),
//body:  ListView.builder(itemBuilder: (context, index) {
//  ListTile(
//    title: Text("hhh"),
//    leading: Icon(Icons.favorite_border),
//  );
//return  ListItem();
//}),
//);
//}
//}

class ButtonDefined extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>  _ItemView();
}
class _ItemView extends State<ButtonDefined>{

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top:24,
      left:24,
      child: Transform.rotate(  //<--- This changed
        angle: 180 * pi / 180,
        child: FloatingActionButton(
            heroTag: null,
            mini: true,
            backgroundColor: Colors.orange,

            child: Icon(Icons.label_important,color: Colors.white,
            ),

            onPressed: (){
//              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
//                return MyApp();
//              }
//              )
//              );
//


            }
        ),
      ),
    );
  }
}