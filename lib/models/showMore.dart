import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'initilize.dart';

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
  print("entering description!!!!!");
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

                  ),
                ),
              ],
            ),
            onTap: () {
              setState(() {
                print("tapppp");
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}