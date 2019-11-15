import 'package:flutter/material.dart';
import 'initilize.dart';

class Card extends StatelessWidget {
  ProductItemClass _item;
  Card(this._item);
  @override
  Widget build(BuildContext context) {
    Radius myValue = Radius.circular(5);
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      height: 450,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: _item.isSelected ? mainColor.withOpacity(0.9) : Colors.black,
              blurRadius: 2,
              offset: Offset(0.0, 1.0)
          )
        ],
        color: _item.itemColor,
        borderRadius: BorderRadius.only(topLeft: myValue,topRight: myValue,bottomLeft: myValue,bottomRight: myValue),
      ),
      child: Stack(
        children: <Widget>[
//          ButtonDefined(),
          Positioned(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset(_item.imagePath,fit: BoxFit.fitHeight,),
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 18),child: Text(_item.title,style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                SizedBox(height: 4,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 18),
                    child:Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: location,),
                          Text(_item.price,style: TextStyle(color:location,fontSize: 14),)])),
                SizedBox(height: 4,),
                Padding(padding: EdgeInsets.symmetric(horizontal: 18),child: Text(_item.propertiesText,style: TextStyle(color:Colors.black,fontSize: 10),)),
              ],
            ),
          ),
          Positioned(right: 12,top: 250,
            child:Container(
              height: 55,
              width: 55,
              child: FloatingActionButton(
                  heroTag: null,
                  mini: true,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.message, color: Colors.white,),
                  onPressed: () {
                  }),
            ),),
        ],
      ),
    );
  }
}
class ProductItemClass
{
  bool isSelected;
  Color itemColor;
  String imagePath,price,title,propertiesText;
  ProductItemClass(this.isSelected,this.itemColor,this.imagePath,this.price,this.title,this.propertiesText);
}
class TopProductsMenu extends StatefulWidget {
  @override
  _TopProductsMenuState createState() => _TopProductsMenuState();
}
class _TopProductsMenuState extends State<TopProductsMenu> {
  List<ProductItemClass> productData = new List<ProductItemClass>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productData.add(new ProductItemClass(false,secondColor, "images/chilly.png", "Madhapur Metro Station", "Hyderabad Mango seeds conf", "Elegant"));
    productData.add(new ProductItemClass(false,secondColor, "images/chilly.png", "Madhapur Metro Station", "Hyderabad Mango seeds conf", "Classic"));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: productData.length,itemBuilder: (context,int index){
        return Padding(
          padding: EdgeInsets.only(left:index ==0 ? 32 : 0,top:100,bottom: 16),
          child: Row(
            children: <Widget>[
              new InkWell(
                onTap: ()
                {
//                  Navigator.push(context, MaterialPageRoute(builder: (contetx)=> DetailPage()));
                },
                splashColor: productData[index].itemColor,
                child: Row(
                  children: <Widget>[
                    Card(productData[index]),
                    SizedBox(width: 24,)
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}