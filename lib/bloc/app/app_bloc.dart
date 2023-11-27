import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {

  AppBloc() : super(AppState()) {
    on<AppUpdateFavorites>((AppUpdateFavorites event, Emitter<AppState> emit) => {
      emit(state.copyWith(favorites: event.favorites))
    });
    on<AppUpdateList>((AppUpdateList event, Emitter<AppState> emit) => {
      emit(state.copyWith(itemsList: event.itemList))
    });
  }
}
