
import 'package:connectx/product_page.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_svg/svg.dart';

class BlurImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.check_box_outline_blank,color: Colors.white,),
        title: Text("Kalgudi",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,),),
//        title: Text('Kalgudi'),
        iconTheme: new IconThemeData(color: Colors.white),
        elevation: 0.0,
        backgroundColor: Colors.orange,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(accountName: Text('User Name'),
              accountEmail: Text('xxxxxxxxx@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.orange
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
              onTap: (){},
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
                    image:  AssetImage('assets/products/veg.jpeg'),
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
                                'assets/products/buyer.svg',
                                color: Colors.blue,
                                height: 35.0,
                                width: 35.0,
                              ),
                              SizedBox(height: 12),
                              SvgPicture.asset(
                                'assets/products/countries.svg',
                                color: Colors.green,
                                height: 35.0,
                                width: 35.0,
                                allowDrawingOutsideViewBox: true,
                              ),
                              SizedBox(height: 12),
                              SvgPicture.asset(
                                'assets/products/framers.svg',
                                color: Colors.amber,
                                height: 35.0,
                                width: 35.0,
                                allowDrawingOutsideViewBox: true,
                              ),
                              SizedBox(height: 12),
                              SvgPicture.asset(
                                'assets/products/fpo.svg',
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
                margin: EdgeInsets.only(top:ScreenHeight*0.38,left: 30.0),
                child: Text("Ongoing Events",textScaleFactor: 1.5,),
              )
            ]
        ),
      ),
    );
  }
}
