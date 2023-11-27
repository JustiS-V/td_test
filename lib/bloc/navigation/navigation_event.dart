part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}


class NavigationToList extends NavigationEvent {NavigationToList();}
class NavigationToCurrent extends NavigationEvent {NavigationToCurrent();}