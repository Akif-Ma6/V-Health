import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      collapsedHeight: 120,
      pinned: true,
      floating: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Restaurant Name"),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: child,
        title: title,
        titlePadding: const EdgeInsets.only(right: 0,left: 0,top: 0),
        expandedTitleScale: 1,
      ),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon( Icons.table_restaurant_sharp))
      ],
    );
  }
}
