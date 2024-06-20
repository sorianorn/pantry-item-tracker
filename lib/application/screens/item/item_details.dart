import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Item details screen $id'),
    );
  }
}
