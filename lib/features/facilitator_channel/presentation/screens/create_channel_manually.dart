import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/cover_image_stack.dart';
import 'package:flutter/material.dart';

class ChannelCreationScreen extends StatefulWidget {
  const ChannelCreationScreen({super.key});

  @override
  State<ChannelCreationScreen> createState() => _ChannelCreationScreenState();
}

class _ChannelCreationScreenState extends State<ChannelCreationScreen> {
  late GlobalKey<FormFieldState> facilitatorNameKey;
  late GlobalKey<FormFieldState> channelHandleKey;
  late GlobalKey<FormFieldState> channelDescriptionKey;
  late GlobalKey<FormFieldState> facilitatorCategoryKey;

  bool facilitatorNameIsValid = false;
  bool channelHandleIsValid = false;
  bool channelDescriptionIsValid = false;
  bool facilitatorCategoryIsValid = false;

  @override
  void initState() {
    facilitatorNameKey = GlobalKey<FormFieldState>();
    channelHandleKey = GlobalKey<FormFieldState>();
    channelDescriptionKey = GlobalKey<FormFieldState>();
    facilitatorCategoryKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Channel Creation",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CoverImageStack(
                    controller: PageController(),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 45),
                      InputFieldWidget(
                        validator: (p0) {
                          final facilitatorNameState = Validator.validateEmail(
                              facilitatorNameKey.currentState?.value);
                          return facilitatorNameState;
                        },
                        enabledBorderRadius: 5,
                        hintColor: const Color.fromARGB(120, 58, 58, 58),
                        hintSize: 18,
                        hintText: "facilitator Name",
                        onChanged: (val) {
                          setState(() {
                            facilitatorNameIsValid =
                                facilitatorNameKey.currentState!.validate();
                          });
                        },
                        textFieldkey: facilitatorNameKey,
                      ),
                      InputFieldWidget(
                        validator: (p0) {
                          final channelHandleState = Validator.validateEmail(
                              channelHandleKey.currentState?.value);
                          return channelHandleState;
                        },
                        enabledBorderRadius: 5,
                        hintColor: const Color.fromARGB(120, 58, 58, 58),
                        hintSize: 18,
                        hintText: "Channel Handle",
                        onChanged: (val) {
                          setState(() {
                            channelHandleIsValid =
                                channelHandleKey.currentState!.validate();
                          });
                        },
                        textFieldkey: channelHandleKey,
                      ),
                      InputFieldWidget(
                        maxLines: 4,
                        validator: (p0) {
                          final channelDescriptionState =
                              Validator.validateEmail(
                                  channelDescriptionKey.currentState?.value);
                          return channelDescriptionState;
                        },
                        enabledBorderRadius: 5,
                        hintColor: const Color.fromARGB(120, 58, 58, 58),
                        hintSize: 18,
                        hintText: "Channel Description",
                        verticalContentPadding: 10,
                        onChanged: (val) {
                          setState(() {
                            channelDescriptionIsValid =
                                channelDescriptionKey.currentState!.validate();
                          });
                        },
                        textFieldkey: channelDescriptionKey,
                      ),
                      InputFieldWidget(
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.selectChannelCategory);
                        },
                        validator: (p0) {
                          final facilitatorCategoryState =
                              Validator.validateEmail(
                                  facilitatorCategoryKey.currentState?.value);
                          return facilitatorCategoryState;
                        },
                        enabledBorderRadius: 5,
                        hintColor: const Color.fromARGB(120, 58, 58, 58),
                        hintSize: 18,
                        hintText: "facilitator Category",
                        onChanged: (val) {
                          setState(() {
                            facilitatorCategoryIsValid =
                                facilitatorCategoryKey.currentState!.validate();
                          });
                        },
                        textFieldkey: facilitatorCategoryKey,
                      ),
                      const SizedBox(height: 77),
                      PrimaryButton(
                        label: 'Submit',
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.channelManual);
                        },
                        isEnabled: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
