import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Tabs {
  nowPlaying,
  search,
  favorites,
}

class TabCubit extends Cubit<TabCubitState> {
  TabCubit() : super(TabCubitState());

  setCurrentTab(Tabs tab) {
    if (tab != state.currentTab) {
      emit(TabCubitState(currentTab: tab));
    }
  }

  IconData mapTabToIcon(Tabs tab) {
    switch (tab) {
      // TODO - Add to icons
      case Tabs.nowPlaying:
        return Icons.play_arrow;
      case Tabs.search:
        return Icons.search;
      case Tabs.favorites:
        return Icons.favorite;
    }
  }

  String mapTabToLabel(Tabs tab) {
    switch (tab) {
      // TODO - Add to locales
      case Tabs.nowPlaying:
        return 'Now Playing';
      case Tabs.search:
        return 'Search';
      case Tabs.favorites:
        return 'Favorites';
    }
  }
}

class TabCubitState {
  final Tabs currentTab;

  TabCubitState({this.currentTab = Tabs.nowPlaying});
}
