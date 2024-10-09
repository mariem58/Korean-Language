import 'package:flutter/material.dart';
import '../Model/itemModel.dart';
import 'item.dart';

class ItemGrid extends StatelessWidget {
  final List<ItemModel> items; // The list of items to display
  const ItemGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      children: _buildItemRows(context),
    );
  }

  List<Widget> _buildItemRows(BuildContext context) {
    List<Widget> rows = [];
    for (int i = 0; i < items.length; i += 2) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildItemButton(context, items[i]),
            if (i + 1 < items.length) _buildItemButton(context, items[i + 1]),
          ],
        ),
      );
      rows.add(const SizedBox(height: 15)); // Add spacing between rows
    }
    return rows;
  }

  Widget _buildItemButton(BuildContext context, ItemModel item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Item(item: item),
    );
  }
}
