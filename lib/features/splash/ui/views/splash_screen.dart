import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/core/manager/app_cubit.dart';
import 'package:trysplash/features/splash/ui/views/widgets/splash_body.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: const Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
