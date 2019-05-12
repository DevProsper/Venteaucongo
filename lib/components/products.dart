import 'package:flutter/material.dart';
import 'package:app1/pages/product_details.dart';
import 'package:app1/main.dart';


class Products extends StatefulWidget{
  @override
  _ProductsState createState() =>_ProductsState();
}

class _ProductsState  extends State<Products>{

  var product_list = [
    {
      "name" : "Blazer",
      "picture" : "images/products/blazer2.jpeg",
      "old_price" : 12.000,
      "price" : 80.000,
    },
    {
      "name" : "Robe",
      "picture" : "images/products/dress1.jpeg",
      "old_price" : 150.000,
      "price" : 54.500,
    },
    {
      "name" : "Blazer",
      "picture" : "images/products/blazer1.jpeg",
      "old_price" : 8.500,
      "price" : 5000,
    },
    {
      "name" : "Robe",
      "picture" : "iimages/products/dress2.jpeg",
      "old_price" : 18.000,
      "price" : 14.500,
    },
    {
      "name" : "Hills",
      "picture" : "images/products/hills1.jpeg",
      "old_price" : 225.000,
      "price" : 41.500,
    },
    {
      "name" : "Hills",
      "picture" : "images/products/hills2.jpeg",
      "old_price" : 85.000,
      "price" : 70.000,
    },
    {
      "name" : "Pantalon",
      "picture" : "images/products/pants2.jpeg",
      "old_price" : 18.500,
      "price" : 15.000,
    },
    {
      "name" : "Skit",
      "picture" : "images/products/skt1.jpeg",
      "old_price" : 12.500,
      "price" : 8.700,
    },
    {
      "name" : "Skit",
      "picture" : "images/products/skt2.jpeg",
      "old_price" : 40.000,
      "price" : 38.000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_pro(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_pro extends StatelessWidget{

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_pro({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });


  @override
  Widget build(BuildContext context) {

    return Card(
      child: Hero(
          //tag: prod_name, Constat fait, il ne prend pas plus d'image, pour acceder 
        //au detail de l'image il faut que le tag soit un text
          tag: new Text("Hero 1"),
          child: Material(
          child: InkWell(
            onTap: (){
              Route route = MaterialPageRoute(builder: (context) => ProductDetails(
                //Ici on passe les données a la fenêtre detail
                product_detail_name: prod_name, product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price, product_detail_picture: prod_picture,
              ));
              Navigator.push(context, route);
            },
          child: GridTile(
            footer: Container(
              color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
                    ),
                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight:  FontWeight.bold),)
                  ],
                )
            ),
            child: Image.asset(prod_picture,
            fit: BoxFit.cover,),
          ),
        ),
      )),
    );
  }
}