import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:ideazone_invoice_generator/Constraints/constraint.dart';
import 'package:ideazone_invoice_generator/Screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: Text(
          "PAYBILL",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        duration: 4000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: AppColors.primaryColor,
        nextScreen: HomeScreen(
          title: Text(""),
        ),
      ),
    );  
  }
}
