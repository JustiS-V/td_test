import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/app/app_bloc.dart';
import '../../bloc/navigation/navigation_bloc.dart';

class CurrentItemPage extends StatefulWidget {
  const CurrentItemPage({super.key});

  @override
  State<CurrentItemPage> createState() => _CurrentItemPageState();
}

class _CurrentItemPageState extends State<CurrentItemPage> {
  @override
  void initState() {
    super.initState();
  }

  //todo add back button
  //todo add info about todo

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      return Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child:  Text(''),
            ),
            Align(
              alignment: Alignment.center,
              child:  Text('Description'),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Text('Done'),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
