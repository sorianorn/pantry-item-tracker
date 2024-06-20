import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/core/manager/asset_manager.dart';
import 'package:no_to_food_waste_app/application/core/routes/route_names.dart';
import 'package:no_to_food_waste_app/application/core/utils/navigation_manager.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //GoRoute(path: path)
        AppNavigationManager.router.push(
          '${RouteNames.pantryItemsPath}/1',
        );
      },
      child: Card(
        child: Image.asset(AssetManager.hamburgerIconImg),
      ),
    );
  }
}
