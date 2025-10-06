
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/core/manager/app_state.dart';

 class SplashCubit extends Cubit<SplashState> {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation1;
  late Animation<Offset> slidingAnimation2;

  SplashCubit() : super(SplashInitial());

  static SplashCubit of(BuildContext context) => BlocProvider.of(context);

  void startAnimation(TickerProvider ticker) {
    animationController = AnimationController(
      vsync: ticker,
      duration: const Duration(seconds: 5),
    );

    slidingAnimation1 = Tween<Offset>(
      begin: const Offset(0, -10),
      end: const Offset(0, 0),
    ).animate(animationController);

    slidingAnimation2 = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();

    emit(SplashAnimating(slidingAnimation1, slidingAnimation2));

    Future.delayed(const Duration(seconds: 6), () {
      emit(SplashNavigate());
    });
  }

  @override
  Future<void> close() {
    animationController.dispose();
    return super.close();
  }
}
