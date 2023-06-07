import 'package:flutter/material.dart';
import 'package:food_and_drink_mobile/view/screens/home/home_screen.dart';

import 'view/contains/style.dart';
import 'view/screens/landing/landing_screen.dart';
import 'view/screens/product_detail/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBorder2),
            ),
            backgroundColor: kPrimaryColor,
            foregroundColor: kWhiteColor,
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          // textTheme:
        ),
        fontFamily: 'Poppins',
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w900),
          displayMedium: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          labelMedium: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
          labelSmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 9.0, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontSize: 8.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: const LandingScreen(),
    );
  }
}
