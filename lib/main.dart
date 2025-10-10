import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/core/network/api_service.dart';
import 'package:trysplash/core/resources/app_colors.dart';
import 'package:trysplash/features/home/data/repo/home_repo_impl.dart';
import 'package:trysplash/features/home/manager/all_books_cubit/all_books_cubit.dart';
import 'package:trysplash/features/home/manager/free_books_cubit/free_books_cubit.dart';
import 'package:trysplash/features/home/ui/views/widgets/home_screen.dart';
import 'package:trysplash/features/splash/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          //BlocProvider(create: (context)=>AllBooksCubit(HomeRepoImpl(apiService: ApiService(dio: Dio())))..getAllBooks()
    //),
          BlocProvider(create: (context)=>FreeBooksCubit(HomeRepoImpl(apiService: ApiService(dio: Dio())))..getFreeBooks()
          ),
        ],
        child:
          MaterialApp(
          routes: {
            "HomeScreen":(context)=>HomeScreen()
          },
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: AppColors.primaraycolor
          ),
          home:SplashScreen(),
        ),
   );
  }
}
