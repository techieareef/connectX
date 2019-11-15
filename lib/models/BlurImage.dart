import 'package:connect_x/models/ProductPage.dart';
import 'package:connect_x/models/card.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:connect_x/models/EventForm.dart';

import 'Buyers-sellers.dart';


class BlurImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.check_box_outline_blank,color: Colors.white,),
          title: Text("Kalgudi",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,),),
          iconTheme: new IconThemeData(color: Colors.white),
          elevation: 0.0,
          backgroundColor: Colors.orange,
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              //header
              UserAccountsDrawerHeader(accountName: Text('Sharanya Daram'),
                accountEmail: Text('sharanya@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home,color: Colors.red,),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventForm()));
                },
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person,color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket,color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard,color: Colors.red,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite,color: Colors.red,),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help,color: Colors.blue,),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
              children: <Widget>[
                Container(
                  height: ScreenHeight*0.35,
                  decoration:  BoxDecoration(
                    image:  DecorationImage(
                      image:  AssetImage('images/veg.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:  BackdropFilter(
                    filter:  ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0,),
                    child:  Container(
                      decoration:  BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0,top: 30.0),
                  child: Row(
                      children: <Widget>[
                        Container(
                            height: ScreenHeight*0.35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Buyer",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
                                SizedBox(height: 25),
                                Text("Countries",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
                                SizedBox(height: 25),
                                Text("Framers",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
                                SizedBox(height: 25),
                                Text("FPO's",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
                              ],
                            )
                        ),
                        SizedBox(width: 70),
                        Container(
                          height: ScreenHeight*0.35,
                          child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'images/buyer.svg',
                                  color: Colors.blue,
                                  height: 35.0,
                                  width: 35.0,
                                ),
                                SizedBox(height: 12),
                                SvgPicture.asset(
                                  'images/countries.svg',
                                  color: Colors.green,
                                  height: 35.0,
                                  width: 35.0,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                SizedBox(height: 12),
                                SvgPicture.asset(
                                  'images/framers.svg',
                                  color: Colors.amber,
                                  height: 35.0,
                                  width: 35.0,
                                  allowDrawingOutsideViewBox: true,
                                ),
                                SizedBox(height: 12),
                                SvgPicture.asset(
                                  'images/fpo.svg',
                                  color: Colors.deepPurple,
                                  height: 35.0,
                                  width: 35.0,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ]
                          ),
                        ),
                        SizedBox(width: 75),
                        Container(
                          height: ScreenHeight*0.35,
                          child: Column(
                            children: <Widget>[
                              Text("3.1K",textScaleFactor: 2.0,style:TextStyle(color: Colors.white),),
                              SizedBox(height: 15),
                              Text("105",textScaleFactor: 2.0,style:TextStyle(color: Colors.white),),
                              SizedBox(height: 15),
                              Text("1.32M",textScaleFactor: 2.0,style:TextStyle(color: Colors.white),),
                              SizedBox(height: 15),
                              Text("2.05K",textScaleFactor: 2.0,style:TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*0.13),
                  child: ProductsMenu(),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*0.36,left: 30.0),
                   child: Row(
                     mainAxisAlignment:  MainAxisAlignment.start,
                       children: <Widget>[
                         Text("Ongoing Events",textScaleFactor: 1.3,),
                         SizedBox(width: 100),
                         FlatButton(
                           onPressed: (){},
                           child: Text('View All(4)',textScaleFactor:1.0,
                             style: TextStyle(color: Colors.black54),
                           ),
                       ),
                         SizedBox(width:1.0),
                         Icon(Icons.arrow_forward_ios,size: 15.0,color:Colors.black54,),
                     ]
                   ),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*0.90),
                  child: TopProductsMenu(),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*1.13,left: 30.0),
                  child: Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Top Events by Products",textScaleFactor: 1.3,),
                        SizedBox(width: 70),
                        FlatButton(
                          onPressed: (){},
                          child: Text('View All(5)',textScaleFactor:1.0,
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        SizedBox(width:1.0),
                        Icon(Icons.arrow_forward_ios,size: 15.0,color:Colors.black54,),
                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*1.67),
                  child: TopBuyerSeller(),
                ),
                Container(
                  margin: EdgeInsets.only(top:ScreenHeight*1.90,left: 30.0),
                  child: Row(
                      mainAxisAlignment:  MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Top Buyers-Sellers Events",textScaleFactor: 1.3,),
                        SizedBox(width: 50),
                        FlatButton(
                          onPressed: (){},
                          child: Text('View All(6)',textScaleFactor:1.0,
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        SizedBox(width:1.0),
                        Icon(Icons.arrow_forward_ios,size: 15.0,color:Colors.black54,),
                      ]
                  ),
                ),
              ]
          ),
        ),
      );
  }
}
