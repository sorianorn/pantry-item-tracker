import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/core/routes/route_names.dart';
import 'package:no_to_food_waste_app/application/core/utils/constants.dart';
import 'package:no_to_food_waste_app/application/core/utils/navigation_manager.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/widgets/header.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/widgets/item_list_carousel.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';
import 'package:no_to_food_waste_app/application/screens/widgets/app_button_primary.dart';
import 'package:no_to_food_waste_app/application/screens/widgets/card_item.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppButtonPrimary(
            //   buttonLabel: 'Add an item',
            //   buttonWidth: ButtonWidth.full,
            //   onPressed: () => AppNavigationManager.router.push(
            //     RouteNames.itemsPath,
            //   ),
            // ),
            ItemListCarousel(
              title: 'Expiring Soon',
              itemList: List.generate(
                2,
                (index) => CardItem(item: Item()),
              ),
              hasViewAll: false,
            ),
            const SizedBox(
              height: 10,
            ),
            ItemListCarousel(
              title: 'Pantry Items',
              itemList: List.generate(
                10,
                (index) => CardItem(item: Item()),
              ),
              hasViewAll: true,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
