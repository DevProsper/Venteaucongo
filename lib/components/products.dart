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
      "old_price" : 120,
      "price" : 80,
    },
    {
      "name" : "Robe",
      "picture" : "images/products/dress1.jpeg",
      "old_price" : 120,
      "price" : 80,
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
          tag: prod_name,
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
                child: ListTile(
                  leading: Text(
                    prod_name, style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$prod_price",
                    style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough
                    ),
                  ),
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