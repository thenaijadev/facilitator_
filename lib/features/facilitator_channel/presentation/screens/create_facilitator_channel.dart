import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/outline_button.dart';
import 'package:flutter/material.dart';

class CreateFacilitatorChannel extends StatelessWidget {
  const CreateFacilitatorChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset('assets/images/amico_png'),
                  const SizedBox(height: 70),
                  const TextWidget(
                    text: 'Create your First Channel!',
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
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
                    onPressed: () {},
                    isEnabled: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
