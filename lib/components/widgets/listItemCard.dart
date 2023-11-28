import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final VoidCallback navigation;
  String? label;

  bool? check;

  bool? favorites;

  final VoidCallback favoritesChange;

  CardWidget({
    Key? key,
    required this.navigation,
    this.label,
    this.check,
    this.favorites,
    required this.favoritesChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label != null ? label! : 'Title not found',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Text('Check: $check'),
                  IconButton(
                    icon: Icon(
                      check ?? false ? Icons.check : Icons.close,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    onPressed: favoritesChange,
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(
                      favorites ?? false ? Icons.star : Icons.star_border,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    onPressed: favoritesChange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
