part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AppUpdateFavorites extends AppEvent {
  final List favorites;

  AppUpdateFavorites(this.favorites);
}

class AppUpdateList extends AppEvent {
  final List itemList;
  AppUpdateList(this.itemList);
}