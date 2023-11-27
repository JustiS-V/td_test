import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  //todo create current page
  //todo add back button
  //todo add button done
  //todo add info about todo

  @override
  Widget build(BuildContext context) {
    return BlocListener <NavigationBloc, NavigationState>(
        listener: (context, state) {},
        child:  Scaffold(
            body: Column(
              children: [
               Center(

                   child: Text('item name')),
              ],
            )
        )
    );
  }
}