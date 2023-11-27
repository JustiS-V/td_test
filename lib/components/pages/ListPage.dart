import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traficdevil_test/components/pages/CurrentItemPage.dart';
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

    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.itemsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: CardWidget(
                navigation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CurrentItemPage()),
                  );
                },
                title: state.itemsList[index].title,
                check: state.itemsList[index].complated,
                favorites: false,
                // favorites: state.favorites[index].title,
                favoritesChange: () {
                  BlocProvider.of<AppBloc>(context)
                      .add(AppUpdateFavorites(itemList[index].id));
                },
              ),
            );
          },
        );
      },
    );
  }}
