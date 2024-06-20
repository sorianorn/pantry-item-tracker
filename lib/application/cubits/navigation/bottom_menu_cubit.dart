
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_menu_state.dart';

class BottomMenuCubit extends Cubit<BottomMenuState> {
  BottomMenuCubit() : super(BottomMenuInitial());
}
