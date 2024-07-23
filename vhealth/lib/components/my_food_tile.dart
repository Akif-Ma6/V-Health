import 'package:flutter/material.dart';

import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function() onTap;
  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
        child: Card(
          color: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name.toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                   "₹${food.price}",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              subtitle: Text(
                (food.description.length <= 250)
                    ? food.description
                    : '${food.description.substring(0, 250)}...',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ), // leading: GestureDetector(
              //   onTap: onTap,
              //   child: Image.network(
              //     food.imagePath,
              //     height: 150,
              //   ),

              //   // Row(
              //   //   children: [
              //   //     Expanded(
              //   //       child: Column(
              //   //         children: [
              //   //           Text(food.name),
              //   //           Text(food.price.toString()),
              //   //           Text(food.description),
              //   //         ],
              //   //       ),
              //   //     ),

              //   //   ],
              //   // ),
              // ),
              trailing: GestureDetector(
                onTap: onTap,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    food.imagePath,
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
