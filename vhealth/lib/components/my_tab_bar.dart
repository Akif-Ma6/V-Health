import 'package:flutter/material.dart';

import '../models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return Foodcategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last.toUpperCase(),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, 
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: TabBar(
          isScrollable: true, 
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          labelColor: Theme.of(context).colorScheme.onSecondary,
          unselectedLabelColor: Theme.of(context).colorScheme.secondary,
          controller: tabController,
          tabs: _buildCategoryTabs(),
        ),
      ),
    );
  }
}
