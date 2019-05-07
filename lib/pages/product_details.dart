import 'package:flutter/material.dart';

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
        title: Text("Shopping"),
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

        ],
      ),
    );
  }
}