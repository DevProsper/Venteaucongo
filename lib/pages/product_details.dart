import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  @override
  _ProductDetailsState createState() => _ProductDetailsState();

}

class _ProductDetailsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Venteaucongo"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,
            color: Colors.white,),
              onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,
            color: Colors.white,),
              onPressed: (){})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}