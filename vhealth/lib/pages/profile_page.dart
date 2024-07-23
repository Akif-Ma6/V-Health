import 'package:flutter/material.dart';
import 'package:vhealth/components/space.dart';
import 'package:vhealth/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          // color: Theme.of(context).colorScheme.secondary,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Edit Profile"),
                    HorizontalSpace(),
                    Icon(Icons.edit),
                  ],
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'images/akif.jpeg'), // replace with your profile image asset
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Muhammed Akif',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'akifma6@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Divider(),
                const ProfileInfoRow(
                  icon: Icons.phone,
                  text: '+91-7593971636',
                ),
                const Divider(),
                const ProfileInfoRow(
                  icon: Icons.location_on,
                  text: 'Malappuram,Kerala-676123',
                ),
                
                Spacer(),
               
                InkWell(
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
                    child: const ProfileInfoRow(
                        icon: Icons.logout_outlined, text: "Log out")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileInfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: 50,
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          HorizontalSpace(),
          HorizontalSpace(),
          Text(
            text,
            style:  TextStyle(
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.onPrimary
            ),
          ),
        ],
      ),
    );
  }
}
