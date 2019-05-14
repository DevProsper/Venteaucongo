import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget{
  @override
  _Card_productsState createState()=> _Card_productsState();
}

class _Card_productsState extends State<Cart_products>{

  var product_on_the_cart = [
    {
      "name" : "Blazer",
      "picture" : "images/products/blazer2.jpeg",
      "price" : 12.000,
      "size" : "M",
      "color" : "red",
      "quantity":2,
    },
    {
      "name" : "Robe",
      "picture" : "images/products/dress1.jpeg",
      "price" : 12.000,
      "size" : "XXL",
      "color" : "blue",
      "quantity":12,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_product_cart(
            cart_prod_name : product_on_the_cart[index]["name"],
            cart_prod_picture : product_on_the_cart[index]["picture"],
            cart_prod_price : product_on_the_cart[index]["price"],
            cart_prod_size : product_on_the_cart[index]["size"],
            cart_prod_color : product_on_the_cart[index]["color"],
            cart_prod_qty : product_on_the_cart[index]["quantity"],
        );
      }
    );
  }
}

class Single_product_cart extends StatelessWidget{

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;


  Single_product_cart({this.cart_prod_name, this.cart_prod_picture,
      this.cart_prod_price, this.cart_prod_size, this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
      return Card(
        child: ListTile(
          leading: new Image.asset(cart_prod_picture, width: 80.0, height: 80.0,),
          title: new Text(cart_prod_name),
          subtitle: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text("Size :"),
                    ),

                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                    ),

                    new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                      child: new Text("Couleur"),),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                    )
                ],
              ),

              //========== SECTION DU PRODUIT ==========

              new Container(
                alignment: Alignment.topLeft,
                child: new Text(
                  "\$${cart_prod_price}",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          trailing: new Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new Text("$cart_prod_qty"),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
            ],
          ),
        ),
      );
  }
}