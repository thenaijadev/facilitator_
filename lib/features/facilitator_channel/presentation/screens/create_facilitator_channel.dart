import 'package:facilitator/features/facilitator_channel/presentation/widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';

class CreateFacilitatorChannel extends StatefulWidget {
  const CreateFacilitatorChannel({super.key});

  @override
  State<CreateFacilitatorChannel> createState() =>
      _CreateFacilitatorChannelState();
}

class _CreateFacilitatorChannelState extends State<CreateFacilitatorChannel> {
  bool isFirstTapped = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/amico.png",
              ),
              const Spacer(),
              TextWidget(
                text: "Create your First Channel!",
                textAlign: TextAlign.center,
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedIconButtonWidget(
                onTap: () {
                  setState(() {
                    isFirstTapped = true;
                  });
                },
                image: "assets/images/ai.png",
                label: "Ask Albert to create your Channel",
                isTapped: isFirstTapped,
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedIconButtonWidget(
                onTap: () {
                  setState(() {
                    isFirstTapped = false;
                  });
                },
                image: "assets/images/document_add.png",
                label: "Create your channel manually",
                isTapped: !isFirstTapped,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  label: "Get Started",
                  onPressed: () {
                    if (isFirstTapped) {
                      Navigator.pushNamed(context, Routes.aiCreateStore);
                    } else {
                      Navigator.pushNamed(
                          context, Routes.createChannelManually);
                    }
                  },
                  isEnabled: true),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
