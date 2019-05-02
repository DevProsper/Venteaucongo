import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // ignore: uri_does_not_exist

import 'package:app1/components/horizontal_listview.dart';
import 'package:app1/components/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    Widget image_caroussel = new Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      child: new CarouselSlider(
        items: [
          AssetImage('images/01.JPG'),
          AssetImage('images/01.JPG'),
          AssetImage('images/01.JPG'),
          AssetImage('images/01.JPG'),
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
      )
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text("Venteaucongo"),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
            new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
          ],
      ),

      drawer: new Drawer(
          child: ListView(
              children: <Widget>[
                //header
                new UserAccountsDrawerHeader(
                    accountName: Text("Prosper NGOUARI"),
                    accountEmail: Text("ngprosper@asnect-it.com"),
                    currentAccountPicture: GestureDetector(
                        child: new CircleAvatar(
                            backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.red
                    ),
                ),

                //body

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Accueil'),
                    leading: Icon(Icons.home),
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Mes commandes'),
                    leading: Icon(Icons.shopping_basket),
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Categories'),
                    leading: Icon(Icons.dashboard),
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Mes favories'),
                    leading: Icon(Icons.favorite),
                  ),
                ),

                Divider(),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Parametres'),
                    leading: Icon(Icons.settings),
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('A propos'),
                    leading: Icon(Icons.help),
                  ),
                ),
              ],
          ),
      ),

      body: new ListView(
        children: <Widget>[
          //Images carousel
          image_caroussel,

          //Padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categries'),),

          //Horizontal list view
          HorizontaList(),

          //Padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Derniers produits'),),

          // grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }

}