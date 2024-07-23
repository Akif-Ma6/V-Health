import 'package:flutter/material.dart';

class MainHomeScreen extends StatelessWidget {
  final cardIcons = [
    Icons.sports_gymnastics,
    Icons.fitness_center,
    Icons.egg_alt_outlined,
    Icons.book,
  ];
  final cardTitles = [
    "Home Workout",
    "Gym Workout",
    "Healthy Meals",
    "Read Blog",
  ];
  MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                ),
                itemCount: cardIcons.length, // Number of items in the grid
                itemBuilder: (context, ind) {
                  return Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(cardIcons[ind], size: 50),
                        Text(cardTitles[ind])
                        ],
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
