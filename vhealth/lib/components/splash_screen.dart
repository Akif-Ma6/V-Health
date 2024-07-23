// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';

import '../pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // checkApiEndpoint().then((_) {
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(
                  ontap: () {},
                ),
              ));
        }
      });
    // });
  }

  // Future<void> checkApiEndpoint() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final apiEndpoint = prefs.getString("api_endpoint");
  //   final token = prefs.getString("token");

  //   if (apiEndpoint != null &&
  //       apiEndpoint.isNotEmpty &&
  //       apiEndpoint != "null") {
  //     token != null && token.isNotEmpty && token != "null"
  //         ? context.go('/home')
  //         : context.go('/login');
  //   } else {
  //     log("apiEndpoint is empty or null");
  //   }
  //   log("apiEndpoint is: $apiEndpoint");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/splash2.gif",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 200,
                ),
                // Column(
                //   children: [
                //     // SizedBox(
                //     //     width: MediaQuery.of(context).size.width - 150,
                //     //     child: Image.asset(
                //     //       "images/sattva-logo-dark.png",
                //     //       fit: BoxFit.cover,
                //     //     )),
                //     // Padding(
                //     //   padding: const EdgeInsets.only(top: 20),
                //     //   child: Text(
                //     //     "Monitor and manage Social, Sustainable,\n Health & Safety standards",
                //     //     style: Theme.of(context).textTheme.bodyLarge,
                //     //     textAlign: TextAlign.center,
                //     //   ),
                //     // ),
                //   ],
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 50),
                //   child: Text(
                //       "copyright © 2021-2023 Sattva, All Rights Reserved",
                //       style: TextStyle(
                //           fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
