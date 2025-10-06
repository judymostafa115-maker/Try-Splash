
import 'package:flutter/material.dart';

abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashAnimating extends SplashState {
  final Animation<Offset> animation1;
  final Animation<Offset> animation2;
  SplashAnimating(this.animation1, this.animation2);
}

class SplashNavigate extends SplashState {}
