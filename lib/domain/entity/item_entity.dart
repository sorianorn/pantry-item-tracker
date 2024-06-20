import 'package:no_to_food_waste_app/domain/entity/sub_category_entity.dart';

class Item {
  const Item({
    required this.itemId,
    required this.itemName,
    required this.subCategory,
    required this.expiryDate,
    this.quantity,
    this.volume,
  });

  final String itemId;
  final String itemName;
  final SubCategory subCategory;
  final DateTime expiryDate;
  final int? quantity;
  final String? volume;
}
