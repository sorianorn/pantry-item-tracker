import 'package:no_to_food_waste_app/domain/entity/category_entity.dart';

class SubCategory {
  const SubCategory({
    required this.category,
    required this.subCategoryId,
    required this.subCategoryName,
  });

  final Category category;
  final String subCategoryId;
  final String subCategoryName;
}
