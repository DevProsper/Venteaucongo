import 'package:flutter/material.dart';
import 'package:app1/main.dart';

import 'package:app1/components/card_product.dart';

class Cart extends StatefulWidget{
  @override
  _CartState createState()=> _CartState();
}

class _CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()
            ));},
            child : new Center(
              child: new Text("Panier"),
            )
        )
        ,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,
            color: Colors.white,),
              onPressed: (){}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: new Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: new Text("Total:"),
                  subtitle: new Text("\25000 FCFA"),
                )
            ),

            Expanded(
                child: new MaterialButton(onPressed: (){},
                  child: new Text("Check out", style: TextStyle(color: Colors.white, fontSize: 17.0),),
                  color: Colors.red,
                ),
            )
          ],
        ),
      ),
    );
  }


}