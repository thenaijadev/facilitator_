import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 83.26,
                ),
                Image.asset(
                  "assets/images/auth_logo.png",
                  width: 350,
                ),
                const SizedBox(
                  height: 84,
                ),
                TextWidget(
                  text: "Create an account",
                  color: theme.primary,
                  fontSize: 38,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 100,
                ),
                PrimaryButton(
                  label: "Login",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  isEnabled: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                PrimaryButton(
                  label: "Sign Up",
                  labelColor: AppColors.inputGrey,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signUp);
                  },
                  isEnabled: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
