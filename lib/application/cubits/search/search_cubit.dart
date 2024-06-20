import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/item.dart';

class SearchCubit extends Cubit<List<Item>> {
  final Dio dio = Dio();

  SearchCubit() : super([]);
}
