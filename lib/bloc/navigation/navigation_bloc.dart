import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState()) {
    on<NavigationToList>((event, emit) => emit(NavigationState(currentPage: 'list')));
    on<NavigationToCurrent>((event, emit) => emit(NavigationState(currentPage: 'current')));
  }
}
