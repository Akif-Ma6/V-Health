class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final Foodcategory category;
  List<Addons> availableAddons;
  Food(
      {required this.description,
      required this.imagePath,
      required this.name,
      required this.price,
      required this.availableAddons,
      required this.category});
}

// categories
enum Foodcategory { veg, nonveg, salad, snacks, drinks,desserts }

// Addons
class Addons {
  String name;
  int price;
  Addons({required this.name, required this.price});
}
