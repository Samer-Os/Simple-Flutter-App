import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var isFavorite = false;
  var favoriteCount = 40;

  void favoriteToggle(){
    setState(() {
      isFavorite = !isFavorite;
      favoriteCount = isFavorite ? ++favoriteCount : --favoriteCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          splashRadius: 15,
          icon: Icon(isFavorite ? Icons.star : Icons.star_border),
          onPressed: favoriteToggle,
          color: Colors.red,
        ),
        Text(favoriteCount.toString()),
      ],
    );
  }
}
