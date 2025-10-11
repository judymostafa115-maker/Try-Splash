import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_colors.dart';
import 'package:trysplash/features/home/ui/views/widgets/home_body.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: HomeBody(),
    );
  }
}
