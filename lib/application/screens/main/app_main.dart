import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/core/routes/route_names.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_provider.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_stack_provider.dart';

class AppMain extends ConsumerStatefulWidget {
  const AppMain({Key? key, required this.child})
      : super(key: key ?? const ValueKey('AppMainScreen'));

  final Widget child;

  @override
  ConsumerState<AppMain> createState() => _AppMainState();
}

class _AppMainState extends ConsumerState<AppMain> {
  final _myStack = Queue<int>();

  @override
  void initState() {
    _myStack.addLast(0);
    super.initState();
  }

  void goToPage(int index) {
    switch (index) {
      case 0:
        context.push(RouteNames.homePath);
        break;
      //case 1:
      //  context.push(RouteNames.searchPath);
      //  break;
      case 1:
        context.push(RouteNames.newItemPath);
        break;
      case 2:
        context.push(RouteNames.pantryItemsPath);
        break;
      //case 3:
      //  context.push(RouteNames.profilePath);
      //  break;
    }
    ref.read(bottomNavigationProvider.notifier).updateIndex(index);
    ref.read(navigatorStackNotifier.notifier).addNavigatorIndex(index);
    _myStack.addLast(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        child: Scaffold(
          // appBar: AppBar(
          //   toolbarHeight: Constants.kAppBarHeight,
          //   backgroundColor:
          //       Theme.of(context).colorScheme.primary.withOpacity(0.2),
          //   centerTitle: false,
          //   leading: buildAppBar(_menuTitle)[0],
          //   title: buildAppBar(_menuTitle)[1],
          // ),
          body: widget.child,
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
        ),
      ),
    );
  }

  Widget bottomNav() {
    int currentNavIndex = ref.watch(bottomNavigationProvider);
    // return BottomNavigationBar(
    //   items: const [
    //     BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.search_rounded), label: 'Search'),
    //     BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.kitchen_rounded), label: 'Pantry items'),
    //     BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Recipes'),
    //   ],

    //   currentIndex: currentNavIndex,
    //   //onTap: goToPage,
    //   onTap: (idx) {
    //     if (idx == currentNavIndex) return;
    //     goToPage(idx);
    //   },
    //   showUnselectedLabels: false,
    //   type: BottomNavigationBarType.fixed,
    // );

    return NavigationBar(
      selectedIndex: currentNavIndex,
      onDestinationSelected: (idx) {
        if (idx == currentNavIndex) return;
        goToPage(idx);
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
        //NavigationDestination(
        //    icon: Icon(Icons.search_rounded), label: 'Search'),
        NavigationDestination(icon: Icon(Icons.add), label: 'Add'),
        NavigationDestination(
            icon: Icon(Icons.kitchen_rounded), label: 'Pantry items'),
        //NavigationDestination(icon: Icon(Icons.restaurant), label: 'Recipes'),
      ],
    );
  }

  List<Widget> buildAppBar(String? title) {
    List<Widget> appBarWidgets = [];
    Widget titleWidget;
    Widget leadingWidget;
    if (title != null) {
      leadingWidget = IconButton(
        onPressed: () {
          _myStack.removeLast();
          setState(() {
            goToPage(_myStack.removeLast());
          });
          // if (context.canPop()) {
          //   context.pop();
          // }
        },
        icon: Icon(Icons.arrow_back),
      );
      titleWidget = Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      );
    } else {
      leadingWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30.0,
          ),
        ],
      );
      titleWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Welcome back,",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Ryan",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              )
            ],
          )
        ],
      );
    }

    appBarWidgets.add(leadingWidget);
    appBarWidgets.add(titleWidget);

    return appBarWidgets;
  }
}
