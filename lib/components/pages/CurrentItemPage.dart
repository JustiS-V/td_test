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
        body: Container(
          padding: EdgeInsets.all(20),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                       false ? Icons.star : Icons.arrow_back,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    onPressed: ()=>{Navigator.pop(context)},
                  ),
                  Text('title', style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  IconButton(
                    icon: Icon(
                       false ? Icons.star : Icons.star_border,
                      color: Colors.black,
                      size: 50.0,
                    ),
                    onPressed: ()=>{},
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child:  Text('Description'),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: Colors.black,
                    child: Text('Done',
                    style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        )
      );
    });
  }
}
