import 'package:flutter/material.dart';

class Favoritewidget extends StatefulWidget{
  final bool isFavorited;
  final int favoriteCount;

  const Favoritewidget ( {required Key key,required this.isFavorited,required this.favoriteCount}) : super(key: key);

  _FavoreiteWidgetState createState() => _FavoreiteWidgetState(this.isFavorited, this.favoriteCount);
}

class _FavoreiteWidgetState extends State<Favoritewidget> {
  bool _isFavorited;
  int _favoriteCount;

  _FavoreiteWidgetState(this._isFavorited, this._favoriteCount);

  void _toggleFavorite(){
    setState(() {
      if(_isFavorited){
        _isFavorited = false;
        _favoriteCount--;
      }else{
        _isFavorited = true;
        _favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed : _toggleFavorite,
            icon : _isFavorited? Icon(Icons.favorite): Icon(Icons.favorite_border),
            color : Colors.red
        ),
        Text('$_favoriteCount')
      ],
    );
  }
}