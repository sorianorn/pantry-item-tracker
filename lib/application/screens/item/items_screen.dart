import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_provider.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_stack_provider.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/category_box.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/search_box.dart';
import 'package:no_to_food_waste_app/application/screens/main/widgets/base_appbar.dart';

class ItemListScreen extends ConsumerWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'Pantry items'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SearchBox(),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 51, 141, 54),
                    ),
                    child: Text(
                      'Bread, Doughs, Wraps & Salty Snacks',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                childCount: 19,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(bottom: 80.0),
            )
          ],
        ),
      ),
      // SingleChildScrollView(
      //   physics: AlwaysScrollableScrollPhysics(),
      //   padding: const EdgeInsets.symmetric(horizontal: 16),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       SizedBox(height: 10),
      //       Flexible(fit: FlexFit.loose, child: SearchBox()),
      //       Flexible(
      //         fit: FlexFit.loose,
      //         child: GridView(
      //           physics: NeverScrollableScrollPhysics(),
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 3,
      //               childAspectRatio: 3 / 2,
      //               crossAxisSpacing: 20,
      //               mainAxisSpacing: 20),
      //           children: [
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //             CategoryBox(
      //               category: Category(
      //                 categoryName: 'Vegetable',
      //                 color: const Color.fromARGB(255, 48, 139, 53),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),

      // DropdownMenu(
      //   inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(
      //         borderSide: BorderSide(
      //             width: 1.5,
      //             color: Theme.of(context).colorScheme.primary),
      //         borderRadius: BorderRadius.circular(15),
      //       ),
      //       contentPadding:
      //           EdgeInsets.symmetric(vertical: 0, horizontal: 12)),
      //   hintText: 'Filter by category',
      //   width: MediaQuery.of(context).size.width - 32,
      //   menuStyle: MenuStyle(
      //     //fixedSize: MaterialStateProperty.all(
      //     //    Size.fromWidth(MediaQuery.of(context).size.width - 24)),
      //     visualDensity: VisualDensity.comfortable,
      //   ),
      //   dropdownMenuEntries: [
      //     DropdownMenuEntry(value: 'cat_meat', label: 'Meat'),
      //     DropdownMenuEntry(value: 'cat_poultry', label: 'Poultry'),
      //     DropdownMenuEntry(value: 'cat_fish', label: 'Fish'),
      //     DropdownMenuEntry(value: 'cat_fruits', label: 'Fruits'),
      //     DropdownMenuEntry(
      //         value: 'cat_spice', label: 'Seasonings & Spice blends'),
      //     DropdownMenuEntry(value: 'cat_others', label: 'Others'),
      //   ],
      // ),
      //  ],
      //),
      //),
    );
  }
}
