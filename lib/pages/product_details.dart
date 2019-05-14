import 'package:flutter/material.dart';
import 'package:app1/main.dart';
import 'cart.dart';
class ProductDetails extends StatefulWidget{

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;


  ProductDetails({
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture
  });

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
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()
            ));},
            child : new Center(
              child: new Text("Shopping"),
            )
        )
        ,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,
            color: Colors.white,),
              onPressed: (){}),
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
              footer: new Container(
                color: Colors.white54,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),
                      ),
                      Expanded(
                          child: new Text("\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),))
                    ],
                  ),
                ),
              ),
            ),
          ),

//         ====== Premier Bouton ======
        Row(
          children: <Widget>[
            Expanded(
                child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Taille"),
                          content: new Text("Choisir la taille"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),
                            )
                          ],
                        );
                      }
                      );
                    },
                color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Taille")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),

            Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Couleur"),
                            content: new Text("Choisir la couleur"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Couleur")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),

            Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Taille"),
                            content: new Text("Choisir la quantité"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 2.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qté")),
                      Expanded(child: new Icon(Icons.arrow_drop_down))
                    ],
                  ),
                )),
          ],
        ),

          //         ====== Second Bouton ======
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 2.0,
                    child: new Text("Acheter maintenant")
                  )),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),
            ],
          ),
          Divider(color: Colors.red),
          new ListTile(
            title: new Text("Detail du produit"),
            subtitle: new Text("Le Lorem Ipsum est simplement du faux texte "
                "employé dans la composition et la mise en page avant "
                "impression. Le Lorem Ipsum est le faux texte standard "
                "de l'imprimerie depuis les années 1500, quand un imprimeur "
                "anonyme assembla ensemble "
                "des morceaux de texte pour réaliser un livre spécimen de polices "
                "de texte"),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Nom du produit", style: TextStyle(color: Colors.grey),
              ),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),
              )

            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Marque de produit", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Marque LG"),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Etat du produit", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Nouveau"),
              )
            ],
          ),
          
          Divider(),
          new Padding(padding: EdgeInsets.all(8.0),
          child: new Text("Similaire produit"),
          ),

          //SIMILAR PRODUCT
          Container(
            height: 360.0,
            child: Similar_products(),
          )

        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget{
  @override
    _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products>{
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
          return Similar_single_pro(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_pro extends StatelessWidget{

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_pro({
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