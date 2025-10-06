import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_colors.dart';
import 'package:trysplash/features/home/ui/views/widgets/home_screen.dart';
import 'package:trysplash/features/splash/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "HomeScreen":(context)=>HomeScreen()
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaraycolor
      ),
      home:SplashScreen(),
    );
  }
}
