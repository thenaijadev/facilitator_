import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Payment method",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
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
                            text: 'Pay With Credit/Debit Card',
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
                            text: 'Contact Vendor',
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
                      margin: const EdgeInsets.only(bottom: 20),
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
                            text: 'Pay With ETC Pay',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: PrimaryButton(
                  label: "Select Payment Gateway",
                  onPressed: () {
                    if (_value == 1) {
                      Navigator.pushNamed(context, Routes.payWithCard);
                    }
                    if (_value == 1) {
                      Navigator.pushNamed(context, Routes.myWallet);
                    }
                  },
                  isEnabled: true),
            )
          ],
        ),
      ),
    );
  }
}
