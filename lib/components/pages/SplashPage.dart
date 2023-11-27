import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'ListPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset('lib/assets/splash.png'),
            Text('Traffic Devil TT', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        ),
        backgroundColor: Colors.white,
        splashIconSize: 250,
        duration: 4000,
        nextScreen: ListPage()
    );
  }
}