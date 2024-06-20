import 'dart:collection';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationStackNotifier extends StateNotifier<ListQueue<int>> {
  NavigationStackNotifier() : super(ListQueue.of([0]));

  void addNavigatorIndex(int index) {
    state.addLast(index);
  }

  void removeNavigatorIndex() {
    if (state.isNotEmpty) {
      state.removeLast();
    }
  }
}

final navigatorStackNotifier =
    StateNotifierProvider<NavigationStackNotifier, ListQueue<int>>(
        (ref) => NavigationStackNotifier());
