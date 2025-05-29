import 'package:brouillon_flutter/favoriteWidget.dart';
import 'favoriteWidget.dart';
import 'package:flutter/material.dart';

//Ecran des recettes
class ReceiptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(10),
      child:
      Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom : 10),
                child : Text('Gojo Satoru', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                )),
              ),
              Text('Par Gege Akutami',
                  style: TextStyle(
                      color: Colors.black45
                  ))
            ],
          ),
          ),
          Favoritewidget(key: GlobalKey(), isFavorited: false, favoriteCount: 45)
        ],
      ),
    );

    Row _buildButtonColumn(Color color, IconData icon, String label) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Icon(icon, color: color),
            ),
            Text(label, style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: color
            ),)
          ]
      );
    }

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.comment, "Comment"),
        _buildButtonColumn(Colors.blue, Icons.share, "Share"),
      ],
    );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(20),
      child: Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab veritatis excepturi vero odit necessitatibus corrupti tempore voluptate, atque magnam aliquam at distinctio repellendus sequi assumenda, in unde impedit, suscipit voluptatum?Sed, temporibus molestiae. Reiciendis vitae nobis quo temporibus distinctio suscipit repellendus unde voluptate nemo, dolor laborum vel nisi dignissimos delectus quibusdam, ex ullam maiores laudantium veritatis soluta incidunt asperiores dolore?Nam, praesentium incidunt, ut nisi fugit doloremque neque quisquam non consequuntur magnam est earum ad sint voluptatibus placeat quam doloribus distinctio perferendis quis deleniti in aperiam accusantium. Dolor, fugit cum?Reprehenderit nulla ab nobis, a perferendis fugit asperiores facilis. Soluta quaerat maiores dicta maxime deleniti praesentium quos perferendis saepe, error quia hic quam molestias earum repellat quasi modi ea suscipit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab veritatis excepturi vero odit necessitatibus corrupti tempore voluptate, atque magnam aliquam at distinctio repellendus sequi assumenda, in unde impedit, suscipit voluptatum?Sed, temporibus molestiae. Reiciendis vitae nobis quo temporibus distinctio suscipit repellendus unde voluptate nemo, dolor laborum vel nisi dignissimos delectus quibusdam, ex ullam maiores laudantium veritatis soluta incidunt asperiores dolore?Nam, praesentium incidunt, ut nisi fugit doloremque neque quisquam non consequuntur magnam est earum ad sint voluptatibus placeat quam doloribus distinctio perferendis quis deleniti in aperiam accusantium. Dolor, fugit cum?Reprehenderit nulla ab nobis, a perferendis fugit asperiores facilis. Soluta quaerat maiores dicta maxime deleniti praesentium quos perferendis saepe, error quia hic quam molestias earum repellat quasi modi ea suscipit.",
          softWrap: true),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Jujutsu Kaisen', style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.white
          )),
        ),
        body: ListView(
          children: [
            Image.network(
              'images/gojo.png',
              width: 600,
              height: 250,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        )
    );
  }
}

