import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_provider.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_stack_provider.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';
import 'package:no_to_food_waste_app/application/screens/main/widgets/base_appbar.dart';

class SearchItemScreen extends ConsumerWidget {
  const SearchItemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'Search item'),
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      //   leading: IconButton(
      //     onPressed: () {
      //       if (context.canPop()) {
      //         ref.watch(navigatorStackNotifier.notifier).removeNavigatorIndex();
      //         int lastIndex = ref.watch(navigatorStackNotifier).last;
      //         print('>>>>>> $lastIndex');
      //         ref
      //             .watch(bottomNavigationProvider.notifier)
      //             .updateIndex(lastIndex);
      //         context.pop();
      //       }
      //     },
      //     icon: Icon(Icons.arrow_back),
      //   ),
      //   title: Text(
      //     'Search item',
      //     style: Theme.of(context).textTheme.titleMedium,
      //   ),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              child: Text('Search Bar'),
            ),
            Container(
              child: Item(),
            ),
          ],
        ),
      ),
    );
  }
}
