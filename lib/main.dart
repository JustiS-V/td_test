import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/navigation/navigation_bloc.dart';
import 'components/pages/CurrentItemPage.dart';
import 'components/pages/ListPage.dart';
import 'components/pages/SplashPage.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => NavigationBloc(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => SplashPage(),
        '/list': (context) => ListPage(),
        '/current': (context) => CurrentItemPage(),
      },
      initialRoute: '/splash',
    );
  }
}

//todo add dark and light theme