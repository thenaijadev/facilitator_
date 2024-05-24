import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PasswordChangeSuccessfulScreen extends StatelessWidget {
  const PasswordChangeSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/success.png",
                width: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: "Your password has been changed",
                fontSize: 16,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  label: "Back to Home", onPressed: () {}, isEnabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
