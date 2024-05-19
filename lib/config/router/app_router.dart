import 'package:facilitator/features/auth/presentation/screens/facilitator_profile_screen.dart';
import 'package:facilitator/features/home/presentation/screens/home_screen.dart';
import 'package:facilitator/features/auth/presentation/screens/login_signup_screen.dart';
import 'package:facilitator/features/auth/presentation/screens/splash_screen.dart';
import 'package:facilitator/features/home/presentation/screens/welcome_screen.dart';
import 'package:facilitator/features/home/presentation/screens/channel_overview_screen.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/error_screen.dart';
import '../../features/auth/presentation/screens/forgot_password.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/auth/presentation/screens/reset_password.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/verification_successful.dart';
import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.loginSignupScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginSignupScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessfulScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.homeScreenTwo:
        return MaterialPageRoute(
          builder: (_) => const ChannelOverviewScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const FacilitatorProfileScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
