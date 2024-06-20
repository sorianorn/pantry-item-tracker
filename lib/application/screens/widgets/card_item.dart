import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 6, bottom: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
            child: Image.network(
              'https://img.freepik.com/free-photo/tiramissu-dessert-with-mint_1303-9604.jpg?w=1060&t=st=1712292399~exp=1712292999~hmac=c147ed9526e9cc8ff9d65b1e62b185006dfbe3133e1c18c981f029360085b94c',
              height: 175,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          ListTile(
            title: Text(
              'Milk',
            ),
            subtitle: Wrap(
              children: [
                Text(
                  'Natrel Lactose free 2% - 2 days left',
                ),
              ],
            ),
            contentPadding: EdgeInsets.only(left: 10),
          ),
        ],
      ),
    );
  }
}
