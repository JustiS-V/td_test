import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final VoidCallback navigation;
  final String title;
  final bool check;
  final bool favorites;
  final VoidCallback favoritesChange;

  CardWidget({
    Key? key,
    required this.navigation,
    required this.title,
    required this.check,
    required this.favorites,
    required this.favoritesChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            // Add your navigation, check, and favorites widgets here
            if (navigation != null)
              ElevatedButton(
                onPressed: navigation,
                child: Text('Navigate'),
              ),
            Text('Check: $check'),
            GestureDetector(
              onTap: favoritesChange,
              child: Text('Favorites: $favorites'),
            ),
          ],
        ),
      ),
    );
  }
}
