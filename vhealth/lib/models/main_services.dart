import 'package:flutter/material.dart';
import 'package:vhealth/models/food.dart';

import 'Sections.dart';

class Restaurant extends ChangeNotifier{
  final List<MainSections> _sections = [
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
   MainSections(icon: Icons.fitness_center, text: "Gym Workouts"),
  ];



  // GETTERS
  List<MainSections> get menu => _sections;
}
