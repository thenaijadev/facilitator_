import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class AddDescriptionScreen extends StatefulWidget {
  const AddDescriptionScreen({super.key});

  @override
  State<AddDescriptionScreen> createState() => _AddDescriptionScreenState();
}

class _AddDescriptionScreenState extends State<AddDescriptionScreen> {
  late GlobalKey<FormFieldState> descriptionKey;

  bool descriptionIsValid = false;

  @override
  void initState() {
    descriptionKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Add Description",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/photo.png'),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'John Doe',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidget(
                              text: 'Business Facilitator',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const TextWidget(
                      text: 'Sponsored',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(244, 159, 28, 1),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Image.asset('assets/images/video_image.png'),
                const SizedBox(height: 10),
                const TextWidget(
                  text: 'How to run a coffee BUSINESS in 2023',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                InputFieldWidget(
                  maxLines: 4,
                  validator: (p0) {
                    final descriptionState = Validator.validateEmail(
                        descriptionKey.currentState?.value);
                    return descriptionState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "Add a description...",
                  verticalContentPadding: 10,
                  onChanged: (val) {
                    setState(() {
                      descriptionIsValid =
                          descriptionKey.currentState!.validate();
                    });
                  },
                  textFieldkey: descriptionKey,
                ),
              ],
            ),
            PrimaryButton(
                label: "Select your audience",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.selectAudience);
                },
                isEnabled: true),
          ],
        ),
      ),
    );
  }
}
