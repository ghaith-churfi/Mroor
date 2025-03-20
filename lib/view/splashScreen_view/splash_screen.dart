import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:traffic_app/view/createAccount_view/signup.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splash: Image.asset('assets/images/Vector.png'),
      nextScreen: Signup(),
      splashTransition: SplashTransition.slideTransition,
      duration: 3000,
    );
  }
}
