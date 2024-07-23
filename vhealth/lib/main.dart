import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vhealth/pages/home_page.dart';
import 'package:vhealth/pages/register_page.dart';
import 'package:vhealth/themes/them_provider.dart';

import 'components/splash_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      // ChangeNotifierProvider(
      //   create: (context) => Restaurant(),
      // )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemeProvider>(context).themeData,
        debugShowCheckedModeBanner: false,
        home:  const SplashScreen(
        ));
  }
}
