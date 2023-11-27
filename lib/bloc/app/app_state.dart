part of 'app_bloc.dart';

class AppState {
  List favorites;
  List itemsList;

  AppState({
    this.favorites = const [],
    this.itemsList = const [],
  });

  AppState copyWith({
    List? favorites,
    List? itemsList,
  }) {
    return AppState(
      favorites: favorites ?? this.favorites,
      itemsList: itemsList ?? this.itemsList,
    );
  }
}