import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaraycolor,
      ),
    );
  }
}
