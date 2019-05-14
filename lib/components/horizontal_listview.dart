import 'package:flutter/material.dart';

// Ici nous avons la liste de nos categories
class HorizontaList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessoires',
            ),

            Category(
              image_location: 'images/cats/dress.png',
              image_caption: 'Habits',
            ),

            Category(
              image_location: 'images/cats/formal.png',
              image_caption: 'Formel',
            ),

            Category(
              image_location: 'images/cats/informal.png',
              image_caption: 'Informel',
            ),

            Category(
              image_location: 'images/cats/jeans.png',
              image_caption: "j'eans",
            ),

            Category(
              image_location: 'images/cats/shoe.png',
              image_caption: 'Robe',
            ),

            Category(
              image_location: 'images/cats/tshirt.png',
              image_caption: 'Tea chirt',
            ),

        ],
      ),
    );
  }

}

class Category extends StatelessWidget{

  final String image_location;
  final String image_caption;

  @override
  Widget build(BuildContext context) {
    return new Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 80.0,
        child: ListTile(
          title: Image.asset(
            image_location,
            width: 40.0,
              height: 40.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, style: TextStyle(fontSize: 12.0),),
          ),
        ),
      )
    ),
    );
  }

  Category({
    this.image_caption,
    this.image_location
  });
}