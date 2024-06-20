import 'package:no_to_food_waste_app/domain/entity/item_entity.dart'
    as item_entity;

class Item extends item_entity.Item {
  const Item({
    required super.itemId,
    required super.itemName,
    super.quantity,
    super.volume,
    required super.expiryDate,
    required super.subCategory,
  });

  //factory Item.mapFromJSON() {}
}
