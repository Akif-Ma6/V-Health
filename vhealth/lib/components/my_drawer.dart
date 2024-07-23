import 'package:flutter/material.dart';
import 'package:vhealth/components/space.dart';

import '../pages/login_page.dart';
import '../pages/setting_page.dart';
import 'my_drawer_tile.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 25),
            child: Icon(
              Icons.fastfood_outlined,
              size: 50,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Text(
            "Muhammed Akif N",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 15),
          ),
          const VerticalSpace(),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
            thickness: 1,
          ),
          const VerticalSpace(),
          MyDrawerTile(
            icon: Icons.home,
            text: "H  O  M  E",
            onTap: () => Navigator.of(context).pop(),
          ),
          MyDrawerTile(
            icon: Icons.settings,
            text: "S E T T I N G S",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ));
            },
          ),
          const Spacer(),
          MyDrawerTile(
            icon: Icons.login_outlined,
            text: "L O G O U T",
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      ontap: () {},
                    ),
                  ),
                  (route) => false);
            },
          ),
          const VerticalSpace(),
        ],
      ),
    );
  }
}
