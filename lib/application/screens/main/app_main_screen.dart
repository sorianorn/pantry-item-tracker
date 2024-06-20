import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:no_to_food_waste_app/application/screens/dashboard/widgets/header.dart';

class AppMainScreen extends StatelessWidget {
  const AppMainScreen({Key? key, required this.navigationShell})
      : super(key: key ?? const ValueKey('AppMainScreen'));

  final StatefulNavigationShell navigationShell;

  void goToPage(int index) {
    navigationShell.goBranch(index,
        initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    bool showAppBar = true;
    String? appBarTitle;

    // Do not show AppBar if on add item screen
    if (navigationShell.currentIndex == 2) {
      showAppBar = false;
      appBarTitle = 'Add new item';
    }

    return Scaffold(
      // appBar: showAppBar
      //     ? const AppHeader()
      //     : AppBar(
      //         centerTitle: true,
      //         title: Text(appBarTitle!),
      //         leading: IconButton(
      //           onPressed: () => context.pop(),
      //           icon: Icon(Icons.arrow_back),
      //         ),
      //       ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 0.0),
        child: SafeArea(child: navigationShell),
      ),
      bottomNavigationBar: bottomNav(),
      resizeToAvoidBottomInset: false,
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: () {
      //     print('FAB pressed');
      //   },
      //   tooltip: 'Increment',
      //   child: new Icon(
      //     Icons.add,
      //   ),
      //   elevation: 4.0,
      //   shape: CircleBorder(),
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   foregroundColor: Theme.of(context).colorScheme.onPrimary,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }

  Widget bottomNav() {
    return NavigationBar(
      selectedIndex: navigationShell.currentIndex,
      onDestinationSelected: goToPage,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
        NavigationDestination(
            icon: Icon(Icons.search_rounded), label: 'Search'),
        NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
        NavigationDestination(
            icon: Icon(Icons.kitchen_rounded), label: 'Pantry items'),
        NavigationDestination(icon: Icon(Icons.restaurant), label: 'Recipes'),
      ],
    );
  }
}
