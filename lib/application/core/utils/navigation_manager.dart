import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/core/routes/route_names.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/dashboard_screen.dart';
import 'package:no_to_food_waste_app/application/screens/home/home_screen.dart';
import 'package:no_to_food_waste_app/application/screens/item/item_details.dart';
import 'package:no_to_food_waste_app/application/screens/item/items_screen.dart';
import 'package:no_to_food_waste_app/application/screens/item/new_item_screen.dart';
import 'package:no_to_food_waste_app/application/screens/main/app_main.dart';
import 'package:no_to_food_waste_app/application/screens/main/app_main_screen.dart';
import 'package:no_to_food_waste_app/application/screens/profile/profile_screen.dart';
import 'package:no_to_food_waste_app/application/screens/welcome/welcome_screen.dart';

class AppNavigationManager {
  static final AppNavigationManager _instance =
      AppNavigationManager._internal();

  static AppNavigationManager get instance => _instance;

  static late final GoRouter router;

  static GlobalKey<NavigatorState> rootNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'rootNavKey');
  static GlobalKey<NavigatorState> shellNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellNavKey');
  final _homeTabNavKey = GlobalKey<NavigatorState>(debugLabel: 'homeTab key');
  static GlobalKey<NavigatorState> searchTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'searchTab key');
  static GlobalKey<NavigatorState> itemsTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'itemTab key');
  static GlobalKey<NavigatorState> pantryItemListTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'pantryItemList key');
  static GlobalKey<NavigatorState> recipesTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'recipesTab key');
  static GlobalKey<NavigatorState> profileTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'profileTab key');

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  factory AppNavigationManager() {
    return _instance;
  }

  AppNavigationManager._internal() {
    final routes = [
      // StatefulShellRoute.indexedStack(
      //   branches: [
      //     StatefulShellBranch(
      //       navigatorKey: _homeTabNavKey,
      //       routes: [
      //         GoRoute(
      //           path: RouteNames.homePath,
      //           //parentNavigatorKey: rootNavKey,
      //           pageBuilder: (context, GoRouterState state) {
      //             return getPage(
      //               child: const DashboardScreen(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: searchTabNavKey,
      //       routes: [
      //         GoRoute(
      //           path: RouteNames.searchPath,
      //           //parentNavigatorKey: rootNavKey,
      //           pageBuilder: (context, state) {
      //             return getPage(
      //               child: const ItemListScreen(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: itemsTabNavKey,
      //       routes: [
      //         GoRoute(
      //           path: RouteNames.newItemPath,
      //           //parentNavigatorKey: rootNavKey,
      //           pageBuilder: (context, state) {
      //             return getPage(
      //               child: const NewItemScreen(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: pantryItemListTabNavKey,
      //       routes: [
      //         GoRoute(
      //           path: RouteNames.pantryItemsPath,
      //           //parentNavigatorKey: rootNavKey,
      //           pageBuilder: (context, GoRouterState state) {
      //             return getPage(
      //               child: const ItemListScreen(),
      //               state: state,
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: RouteNames.pantryItemDetailsPath,
      //               parentNavigatorKey: pantryItemListTabNavKey,
      //               pageBuilder: (context, state) {
      //                 return getPage(
      //                   child: ItemDetailsScreen(
      //                     id: state.pathParameters['id']!,
      //                   ),
      //                   state: state,
      //                 );
      //               },
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     StatefulShellBranch(
      //       navigatorKey: profileTabNavKey,
      //       routes: [
      //         GoRoute(
      //           path: RouteNames.profilePath,
      //           //parentNavigatorKey: rootNavKey,
      //           pageBuilder: (context, state) {
      //             return getPage(
      //               child: const MyProfileScreen(),
      //               state: state,
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ],
      //   pageBuilder: (
      //     BuildContext context,
      //     GoRouterState state,
      //     StatefulNavigationShell navigationShell,
      //   ) {
      //     print(navigationShell.currentIndex);
      //     return getPage(
      //       child: AppMainScreen(
      //         navigationShell: navigationShell,
      //       ),
      //       state: state,
      //     );
      //   },
      // ),

      ShellRoute(
        navigatorKey: shellNavKey,
        pageBuilder: (context, state, child) {
          return getPage(child: AppMain(child: child), state: state);
        },
        routes: [
          GoRoute(
            path: RouteNames.homePath,
            parentNavigatorKey: shellNavKey,
            pageBuilder: (context, state) =>
                getPage(child: const HomeScreen(), state: state),
          ),
          // GoRoute(
          //   path: RouteNames.searchPath,
          //   parentNavigatorKey: shellNavKey,
          //   pageBuilder: (context, state) =>
          //       getPage(child: const ItemListScreen(), state: state),
          // ),
          GoRoute(
            path: RouteNames.newItemPath,
            parentNavigatorKey: shellNavKey,
            pageBuilder: (context, state) =>
                getPage(child: const NewItemScreen(), state: state),
          ),
          GoRoute(
            path: RouteNames.pantryItemsPath,
            parentNavigatorKey: shellNavKey,
            pageBuilder: (context, state) =>
                getPage(child: const ItemListScreen(), state: state),
            routes: [
              GoRoute(
                  path: RouteNames.pantryItemDetailsPath,
                  parentNavigatorKey: shellNavKey,
                  pageBuilder: (context, state) {
                    return getPage(
                      child: ItemDetailsScreen(
                        id: state.pathParameters['id']!,
                      ),
                      state: state,
                    );
                  }),
            ],
          ),
          // GoRoute(
          //   path: RouteNames.profilePath,
          //   parentNavigatorKey: shellNavKey,
          //   pageBuilder: (context, state) =>
          //       getPage(child: const MyProfileScreen(), state: state),
          // ),
        ],
      ),
      GoRoute(
        path: RouteNames.signInPath,
        builder: (context, state) => SignInScreen(
          actions: [
            AuthStateChangeAction<SignedIn>((context, signedIn) {
              //context.pushNamed(
              //  HomePage.pageConfig.name,
              //  pathParameters: {'tab': OverviewPage.pageConfig.name},
              //);
            }),
            AuthStateChangeAction<UserCreated>((context, signedIn) {
              //context.pushNamed(
              //  HomePage.pageConfig.name,
              //  pathParameters: {'tab': DasboardPage.pageConfig.name},
              //);
            }),
          ],
        ),
      ),
      GoRoute(
        path: RouteNames.welcomePath,
        pageBuilder: (context, state) {
          return getPage(
            child: const WelcomeScreen(),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: rootNavKey,
      initialLocation: RouteNames.welcomePath,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
