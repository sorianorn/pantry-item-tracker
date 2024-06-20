import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/screens/main/widgets/base_appbar.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'My profile'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
