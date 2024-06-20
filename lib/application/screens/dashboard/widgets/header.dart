import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/core/manager/asset_manager.dart';
import 'package:no_to_food_waste_app/application/core/utils/constants.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.kAppBarHeight,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 22.0,
                foregroundImage: AssetImage('assets/images/person.png'),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
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
                      padding: const EdgeInsets.only(left: 16.0),
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
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                highlightColor: Colors.transparent,
                //isSelected: isDark,
                onPressed: () {
                  print('change themeMode');
                  //  setState(() {
                  //    isDark = !isDark;
                  //  });
                },
                icon: const Icon(Icons.dark_mode_sharp),
                selectedIcon: const Icon(Icons.brightness_2_sharp),
              ),
              // InkWell(
              //   overlayColor:
              //       const MaterialStatePropertyAll(Colors.transparent),
              //   onTap: () => print('change themeMode'),
              //   child: Image.asset(
              //     AssetManager.darkModeIconImg,
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
  //Size.fromHeight(56);
  //Constants.kAppBarSize; //Size.fromHeight(kToolbarHeight);
}
