import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
