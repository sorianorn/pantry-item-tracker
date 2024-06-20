import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_to_food_waste_app/application/core/utils/constants.dart';
import 'package:no_to_food_waste_app/application/core/utils/navigation_manager.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_provider.dart';
import 'package:no_to_food_waste_app/application/providers/navigation_stack_provider.dart';

class BaseAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      leading: IconButton(
        onPressed: () {
          if (AppNavigationManager.router.canPop()) {
            ref.watch(navigatorStackNotifier.notifier).removeNavigatorIndex();
            int lastIndex = ref.watch(navigatorStackNotifier).last;
            print('>>>>>> $lastIndex');
            ref.watch(bottomNavigationProvider.notifier).updateIndex(lastIndex);
            AppNavigationManager.router.pop();
          }
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 19),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
  //const Size.fromHeight(56);
  //Constants.kAppBarSize; //Size.fromHeight(kToolbarHeight);
}
