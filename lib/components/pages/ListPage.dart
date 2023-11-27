import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traficdevil_test/config/api.dart';

import '../../bloc/app/app_bloc.dart';
import '../../bloc/navigation/navigation_bloc.dart';
import '../widgets/listItemCard.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List itemList = [];

  // List itemList = {userId: 1, id: 1, title: delectus aut autem, completed: false}

  @override
  void initState() {
    super.initState();
  }

  Future itemController(context) async {
    try {
      List itemList = await Api().getItems();
      BlocProvider.of<AppBloc>(context).add(AppUpdateList(itemList));
    } catch (error) {
      print("Error fetching items: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    itemController(context);

    return MultiBlocListener(
      listeners: [
        BlocListener<NavigationBloc, NavigationState>(
          listener: (context, state) {},
        ),
        BlocListener<AppBloc, AppState>(
        //   listener: (context, state) {},
        // ),
      ],
      child: ListView.builder(
        // itemCount: AppState.itemsList,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: CardWidget(
              navigation: () {
                // Handle navigation logic here
              },
              title: 'Your Title',
              check: true,
              favorites: false,
              favoritesChange: () => {
                BlocProvider.of<AppBloc>(context)
                    .add(AppUpdateFavorites(itemList[index].id))
              },
            ),
          );
        },
      ),
    );
  }
}
