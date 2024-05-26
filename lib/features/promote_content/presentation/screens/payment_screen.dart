import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late GlobalKey<FormFieldState> promoCodeKey;

  bool promoCodeIsValid = false;
  int _value = 1;

  @override
  void initState() {
    promoCodeKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Payment",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(
                      text: "Select Payment Method",
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _value = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _value == 1 ? 1.5 : 1,
                                color: Theme.of(context).colorScheme.primary)),
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
                              text: 'Pay with Credit/Debit Card',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
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
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _value == 2 ? 1.5 : 1,
                                color: Theme.of(context).colorScheme.primary)),
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
                              text: 'Pay With Wallet',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
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
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _value == 3 ? 1.5 : 1,
                                color: Theme.of(context).colorScheme.primary)),
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
                              text: 'Pay with Crypto',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _value = 4;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _value == 4 ? 1.5 : 1,
                                color: Theme.of(context).colorScheme.primary)),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio<int>(
                                value: 4,
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
                              text: 'Pay With Crypto',
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
                          _value = 5;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: _value == 5 ? 1.5 : 1,
                                color: Theme.of(context).colorScheme.primary)),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Radio<int>(
                                value: 5,
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
                              text: 'Pay with ETC Pay',
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const TextWidget(
                      text: 'Coming soon!',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(216, 73, 16, 1),
                    ),
                    const SizedBox(height: 21),
                    const TextWidget(
                      text: 'Optional',
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                    InputFieldWidget(
                      validator: (p0) {
                        final promoCodeState = Validator.validateEmail(
                            promoCodeKey.currentState?.value);
                        return promoCodeState;
                      },
                      enabledBorderRadius: 5,
                      hintColor: const Color.fromARGB(120, 58, 58, 58),
                      hintSize: 18,
                      hintText: "Add estimated reach...",
                      verticalContentPadding: 10,
                      onChanged: (val) {
                        setState(() {
                          promoCodeIsValid =
                              promoCodeKey.currentState!.validate();
                        });
                      },
                      textFieldkey: promoCodeKey,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: PrimaryButton(
                      label: "Select Payment Gateway",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.internalTotalReach);
                      },
                      isEnabled: true),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
