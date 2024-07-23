import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vhealth/components/my_food_tile.dart';
import 'package:vhealth/components/space.dart';
import 'package:vhealth/pages/main_home_screen.dart';
import 'package:vhealth/pages/profile_page.dart';
import 'package:vhealth/pages/setting_page.dart';
import '../components/my_current_loaction.dart';
import '../components/my_description.dart';
import '../components/my_drawer.dart';
import '../models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  final bottomNavItems = <Widget>[
    const Icon(Icons.person),
    const Icon(Icons.home),
    const Icon(Icons.settings),
  ];
  final screens = [
    const ProfilePage(),
     MainHomeScreen(),
    const SettingsPage()
  ];

  int index = 1;
  @override
  void initState() {
    super.initState();
    // _tabController =
    //     TabController(length: Foodcategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
     appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage("images/akif.jpeg"),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10), // Adjust the spacing between image and text
            const Text(
              "Muhammed Akif",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
      ),
      // drawer: const MyDrawer(),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onPrimary)),
        child: CurvedNavigationBar(
          color: Theme.of(context).colorScheme.tertiary,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Theme.of(context).colorScheme.tertiary,
          items: bottomNavItems,
          height: 60,
          index: index,
          onTap: (index) => setState(() {
            this.index = index;
          }),
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}
