import 'package:flutter/material.dart';

class HorizontaList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
            ),

            Category(
              image_location: 'images/05.JPG',
              image_caption: 'Homme',
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
        width: 100.0,
        child: ListTile(
          title: Image.asset(
            image_location,
            width: 100.0,
              height: 80.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption),
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