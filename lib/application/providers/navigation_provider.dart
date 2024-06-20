import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void updateIndex(int index) {
    state = index;
  }
}

final bottomNavigationProvider = StateNotifierProvider<NavigationNotifier, int>(
    (ref) => NavigationNotifier());
