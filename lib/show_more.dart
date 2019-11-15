import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'initilize.dart';
//@@@@@@@@@@@@@@@@@@@@@@@@@for testing more / less button widget
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
//  final String description =
//      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";
//
//  @override
//  Widget build(BuildContext context) {
//    return  Scaffold(
//      appBar:  AppBar(
//        title: const Text("Demo App"),
//      ),
//      body:  Container(
//        child:  DescriptionTextWidget(text: description),
//      ),
//    );
//  }
//}
//@@@@@@@@@@@@@@@@@@@@@@@@@for testing more / less button widget activate above code

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 75) {
      firstHalf = widget.text.substring(0, 75);
      secondHalf = widget.text.substring(75, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return  Container(
      margin: EdgeInsets.all(2.0),
      padding:EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(10.0),
        bottomLeft:Radius.circular(10.0),
        bottomRight:Radius.circular(10.0),
      ),
        color: textback,
      ),

//      decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0))) ,
//      padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ?  Text("\n"+firstHalf,style: TextStyle(fontSize: 10.0),)
          :  Column(
        children: <Widget>[
          Text(flag ? ("\n"+firstHalf + "...") : ("\n"+firstHalf + secondHalf),style: TextStyle(fontSize: 14.0,color: Colors.black87)),
          InkWell(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:EdgeInsets.all(1.0),

                  child:Text(
                    flag ? "More"+"\n" : "Less"+"\n",
                    style:  TextStyle(color: location,fontWeight: FontWeight.bold,fontSize: 15.0,),textScaleFactor: 1.0,

//                  textAlign: TextAlign.end,
                  ),
//                  decoration: BoxDecoration(borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(30.0),
//                    topRight: Radius.circular(30.0),
//                    bottomLeft:Radius.circular(30.0),
//                    bottomRight:Radius.circular(30.0),
//                  ),
//                    color: Colors.orange,
//                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}