import 'package:flutter/material.dart';

enum ButtonWidth { full, half, thirds, quarter }

class AppButtonPrimary extends StatelessWidget {
  const AppButtonPrimary({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
    required this.buttonWidth,
  });

  final String buttonLabel;
  final void Function()? onPressed;
  final ButtonWidth buttonWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: switch (buttonWidth) {
        ButtonWidth.full => MediaQuery.of(context).size.width,
        ButtonWidth.half => MediaQuery.of(context).size.width / 2,
        ButtonWidth.thirds => MediaQuery.of(context).size.width / 3,
        ButtonWidth.quarter => MediaQuery.of(context).size.width / 4,
      },
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
