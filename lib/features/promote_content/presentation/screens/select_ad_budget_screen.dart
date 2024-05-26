import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectAdBudget extends StatefulWidget {
  const SelectAdBudget({super.key});

  @override
  State<SelectAdBudget> createState() => _SelectAdBudgetState();
}

class _SelectAdBudgetState extends State<SelectAdBudget> {
  int _value = 0;
  bool isInternal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Select ad Budget",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: isInternal ? 1 : 0.5,
                      child: TextWidget(
                        onTap: () {
                          setState(() {
                            isInternal = true;
                          });
                        },
                        text: "Internal",
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Opacity(
                      opacity: !isInternal ? 1 : 0.5,
                      child: TextWidget(
                        onTap: () {
                          setState(() {
                            isInternal = false;
                          });
                        },
                        text: "External",
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                if (isInternal) _buildInternalPlans(context),
                if (!isInternal) _buildExternalPlans(context),
              ],
            ),
            PrimaryButton(label: "Review Ad", onPressed: () {}, isEnabled: true)
          ],
        ),
      ),
    );
  }

  Column _buildInternalPlans(BuildContext context) {
    return Column(
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
    );
  }

  Column _buildExternalPlans(BuildContext context) {
    return Column(
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
    );
  }
}
