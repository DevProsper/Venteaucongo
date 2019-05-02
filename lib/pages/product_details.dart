import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  @override
  _ProductDetalsState createState() => _ProductDetalsState();

}

class _ProductDetalsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
      backgroundColor: Colors.red,
      title: Text("Shoping"),
      actions: <Widget>[
        new IconButton(icon:
        Icon(Icons.search,
          color: Colors.white,),
            onPressed: (){}),
        new IconButton(icon:
        Icon(Icons.shopping_cart,
          color: Colors.white,),
            onPressed: (){})
      ],
    ),
    );
  }
}