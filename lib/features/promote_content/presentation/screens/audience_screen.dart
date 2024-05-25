import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:facilitator/features/promote_content/presentation/widgets/dropdown_input_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AudienceScreen extends StatefulWidget {
  const AudienceScreen({super.key});

  @override
  State<AudienceScreen> createState() => _AudienceScreenState();
}

class _AudienceScreenState extends State<AudienceScreen> {
  late GlobalKey<FormFieldState> estimatedReachKey;

  bool estimatedReachIsValid = false;
  int _value = 1;
  double value = 30.0;

  @override
  void initState() {
    estimatedReachKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Audience",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputFieldWidget(
                  validator: (p0) {
                    final estimatedReachState = Validator.validateEmail(
                        estimatedReachKey.currentState?.value);
                    return estimatedReachState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "Add estimated reach...",
                  verticalContentPadding: 10,
                  onChanged: (val) {
                    setState(() {
                      estimatedReachIsValid =
                          estimatedReachKey.currentState!.validate();
                    });
                  },
                  textFieldkey: estimatedReachKey,
                ),
                const SizedBox(height: 20),
                const TextWidget(
                  text: 'Set a Location',
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                const TextWidget(
                  text: 'Country',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                const DropdownInputFieldWidget(
                  hintText: 'Nigeria (NGN)',
                ),
                Row(
                  children: [
                    Image.asset('assets/images/GPS.png'),
                    const SizedBox(width: 5),
                    const TextWidget(
                      text: 'Use my location',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const TextWidget(
                  text: 'Gender',
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _value = 1;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const TextWidget(
                          text: 'All',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _value = 2;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const TextWidget(
                          text: 'Male',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _value = 3;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio<int>(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const TextWidget(
                          text: 'Female',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                const TextWidget(
                  text: 'Age range',
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 30),
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: Slider(
                    value: value,
                    min: 0,
                    max: 60,
                    activeColor: AppColors.primary,
                    inactiveColor: AppColors.inputGrey,
                    label: value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            PrimaryButton(
                label: "Select ad budget",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.selectDuration);
                },
                isEnabled: true),
          ],
        ),
      ),
    );
  }
}
