import 'package:flutter/material.dart';
import 'package:trysplash/core/resources/app_images.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImage.logo),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,))
        ],
      ),
    );
  }
}
