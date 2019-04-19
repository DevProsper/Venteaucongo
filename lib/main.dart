import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
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
    );
  }

}