import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/outline_button.dart';
import 'package:flutter/material.dart';

class CreateFacilitatorChannel extends StatelessWidget {
  const CreateFacilitatorChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/amico.png'),
              const SizedBox(height: 70),
              const TextWidget(
                text: 'Create your First Channel!',
                fontSize: 27,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20),
              OutlineButton(
                image: 'assets/images/ai.png',
                label: 'Ask Albert to create your Channel',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              OutlineButton(
                image: 'assets/images/create.png',
                label: 'Create your Channel manually',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                label: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.createChannelManually);
                },
                isEnabled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
