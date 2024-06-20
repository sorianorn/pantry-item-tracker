import 'package:flutter/material.dart';

class Category {
  const Category({required this.categoryName, required this.color});

  final String categoryName;
  final Color color;
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.category,
  });

  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: category.color,
      child: Text(category.categoryName),
    );
  }
}
