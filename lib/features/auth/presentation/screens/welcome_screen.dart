import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                  height: 100,
                ),
                TextWidget(
                  text: 'Welcome to',
                  color: theme.primary,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 25),
                Image.asset(
                  "assets/images/auth_logo.png",
                  width: 350,
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 331,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/add_image.png'),
                  ),
                ),
                const SizedBox(height: 80),
                PrimaryButton(
                  label: "Get Started",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginSignupScreen);
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
