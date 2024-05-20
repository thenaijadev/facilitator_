import 'package:facilitator/app/widgets/app_bar.dart';
import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PromoteContentScreen extends StatefulWidget {
  const PromoteContentScreen({super.key});

  @override
  State<PromoteContentScreen> createState() => _PromoteContentScreenState();
}

class _PromoteContentScreenState extends State<PromoteContentScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          label: const TextWidget(
        text: "Promote Content",
        fontSize: 21,
        fontWeight: FontWeight.w600,
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _value = 1;
                    });
                  },
                  child: Container(
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: '1-Month Plan',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'NGN 2000 / 1month',
                              fontSize: 18,
                            ),
                          ],
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: '2-Month Plan',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'NGN 2000 / 1month',
                              fontSize: 18,
                            ),
                          ],
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: '6-Month Plan',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'NGN 2000 / 1month',
                              fontSize: 18,
                            ),
                          ],
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Annual Plan',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'NGN 2000 / 1month',
                              fontSize: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: PrimaryButton(
                  label: "Promote", onPressed: () {}, isEnabled: true),
            )
          ],
        ),
      ),
    );
  }
}
