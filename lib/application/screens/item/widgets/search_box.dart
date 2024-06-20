import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  SearchBox({super.key});

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Item name',
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1.5, color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      controller: _searchController,
    );
  }
}
