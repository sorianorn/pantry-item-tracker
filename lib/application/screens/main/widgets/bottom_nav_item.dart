import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.iconFile,
    required this.text,
    //this.onTap,
  }) : super(key: key);
  final String iconFile;
  //final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    //return InkWell(
    //  onTap: onTap,
    //child:
    return Column(
      children: [
        // IconButton(
        //   onPressed: onTap,
        //   icon: Icon(
        //     Icons.local_grocery_store,
        //   ),
        // ),
        Image.asset(
          iconFile,
          height: 24.0,
          width: 30.0,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.w600,
                  //fontSize: 12.0,
                ),
          ),
        ),
      ],
      //),
    );
  }
}
