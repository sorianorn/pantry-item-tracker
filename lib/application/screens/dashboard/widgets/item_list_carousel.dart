import 'package:flutter/material.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/widgets/carousel.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';
import 'package:no_to_food_waste_app/application/screens/widgets/card_item.dart';

class ItemListCarousel extends StatefulWidget {
  const ItemListCarousel({
    super.key,
    required this.title,
    required this.itemList,
    this.hasViewAll = false,
  });

  final String title;
  final List<CardItem> itemList;
  final bool hasViewAll;

  @override
  State<ItemListCarousel> createState() => _ItemListCarouselState();
}

class _ItemListCarouselState extends State<ItemListCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ],
              ),
            ),
            if (widget.hasViewAll)
              //Flexible(
              Expanded(
                //child: Flex(
                //direction: Axis.horizontal,
                //mainAxisAlignment: MainAxisAlignment.end,
                //children: [
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('View all pressed');
                      },
                      child: Text(
                        'View all',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    )
                  ],
                ),
                //],
                //),
              )
            else
              const SizedBox(
                height: 45,
              ),
          ],
        ),
        Carousel(itemCardList: widget.itemList),
      ],
    );
  }
}
