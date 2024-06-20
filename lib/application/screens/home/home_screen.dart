import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:no_to_food_waste_app/application/core/manager/asset_manager.dart';
import 'package:no_to_food_waste_app/application/core/utils/constants.dart';
import 'package:no_to_food_waste_app/application/cubits/navigation/bottom_menu_cubit.dart';
import 'package:no_to_food_waste_app/application/screens/dashboard/dashboard_screen.dart';
import 'package:no_to_food_waste_app/application/screens/main/widgets/bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(child: DashboardScreen()),
      //bottomNavigationBar: bottomNav(),
    );
  }
}
