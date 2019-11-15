import 'package:connectx/product_page.dart';
import 'package:flutter/material.dart';
import 'blur_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ConnectX',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: BlurImage(),
    );
  }
}
//
//class PublicEventsPage extends StatefulWidget {
//  @override
//  _PublicEventsPageState createState() => _PublicEventsPageState();
//}
//
//class _PublicEventsPageState extends State<PublicEventsPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      appBar: AppBar(
//
//        centerTitle: true,
//        leading: Icon(Icons.check_box_outline_blank,color: Colors.white,),
//        iconTheme: new IconThemeData(color: Colors.white),
//        title: Text("Kalgudi",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,),),
//
//      ),
//      body: BlurImage(),
//      endDrawer: Drawer(
//
//        child: ListView(
//          children: <Widget>[
//            //header
//            UserAccountsDrawerHeader(accountName: Text('User Name'),
//              accountEmail: Text('XXXXXX@gmail.com'),
//              currentAccountPicture: GestureDetector(
//                child: CircleAvatar(
//                  backgroundColor: Colors.grey,
//                  child: Icon(Icons.person, color: Colors.white,),
//                ),
//              ),
//              decoration: BoxDecoration(
//                  color: Colors.orange
//              ),
//            ),
//            InkWell(
//              onTap: (){
//                Navigator.pop(context);
//              },
//              child: ListTile(
//                title: Text('Home Page'),
//                leading: Icon(Icons.home,color: Colors.red,),
//              ),
//            ),
//            GestureDetector(
//              onTap: (){},
//              child: ListTile(
//                title: Text('My Account'),
//                leading: Icon(Icons.person,color: Colors.red,),
//              ),
//            ),
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('My Orders'),
//                leading: Icon(Icons.shopping_basket,color: Colors.red,),
//              ),
//            ),
//            InkWell(
//              onTap: (){
//                Navigator.pop(context);
//              },
//              child: ListTile(
//                title: Text('Categories'),
//                leading: Icon(Icons.dashboard,color: Colors.red,),
//              ),
//            ),
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('Favorites'),
//                leading: Icon(Icons.favorite,color: Colors.red,),
//              ),
//            ),
//            Divider(),
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('Settings'),
//                leading: Icon(Icons.settings,color: Colors.red,),
//              ),
//            ),
//            InkWell(
//              onTap: (){},
//              child: ListTile(
//                title: Text('About'),
//                leading: Icon(Icons.help,color: Colors.red,),
//              ),
//            )
//          ],
//        ),
//      ),
//
//
//
//
//
//    );
//  }
//
//
//
//
//}

