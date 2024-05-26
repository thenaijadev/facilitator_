import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ManualContentPromotionScreen extends StatefulWidget {
  const ManualContentPromotionScreen({super.key});

  @override
  State<ManualContentPromotionScreen> createState() =>
      _ManualContentPromotionScreenState();
}

class _ManualContentPromotionScreenState
    extends State<ManualContentPromotionScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Choose Content",
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _value = 1;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: SizeConfig.getProportionateScreenWidth(
                        context: context,
                        inputWidth: 390,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Image.asset('assets/images/coffee_beans.png'),
                                const SizedBox(width: 10),
                                const Flexible(
                                  child: TextWidget(
                                    text: 'How to run a coffee \nBusiness',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                      width: SizeConfig.getProportionateScreenWidth(
                        context: context,
                        inputWidth: 390,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Image.asset('assets/images/coffee_beans.png'),
                                const SizedBox(width: 10),
                                const Flexible(
                                  child: TextWidget(
                                    text: 'How to run a coffee \nBusiness',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                      width: SizeConfig.getProportionateScreenWidth(
                        context: context,
                        inputWidth: 390,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Image.asset('assets/images/coffee_beans.png'),
                                const SizedBox(width: 10),
                                const TextWidget(
                                  text: 'How to run a coffee \nBusiness',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
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
                      margin: const EdgeInsets.only(bottom: 20),
                      width: SizeConfig.getProportionateScreenWidth(
                        context: context,
                        inputWidth: 390,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                Image.asset('assets/images/coffee_beans.png'),
                                const SizedBox(width: 10),
                                const TextWidget(
                                  text: 'How to run a coffee \nBusiness',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
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
                  label: "Next",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.addDescription);
                  },
                  isEnabled: true),
            )
          ],
        ),
      ),
    );
  }
}
