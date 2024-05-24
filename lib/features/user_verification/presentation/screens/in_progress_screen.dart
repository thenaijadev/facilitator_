import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InProgressScreen extends StatelessWidget {
  const InProgressScreen({super.key});

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
                "assets/images/hour_glass.png",
                width: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: "This may take up to three (3) working days",
                fontSize: 16,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  label: "Back to Home",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  isEnabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
