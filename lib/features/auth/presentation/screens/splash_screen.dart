import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/features/auth/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColors.primary,
      splash: Image.asset('assets/images/splash_image.png'),
      nextScreen: const WelcomeScreen(),
    );
  }
}
