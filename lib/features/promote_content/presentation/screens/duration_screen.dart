import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DurationScreen extends StatefulWidget {
  const DurationScreen({super.key});

  @override
  State<DurationScreen> createState() => _DurationScreenState();
}

class _DurationScreenState extends State<DurationScreen> {
  final _dateController = TextEditingController();

  DateTime startDate = DateTime.now();
  DateTime? endDate;
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Duration",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                  text: 'Set Ad Duration',
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Daily',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          TextWidget(
                            text: 'Start date - End date',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      GestureDetector(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              firstDate: startDate,
                              lastDate: DateTime(2025),
                            );
                            if (pickedDate != null) {
                              _dateController.text =
                                  pickedDate.toString().split(' ')[0];
                            }
                          },
                          child: Image.asset('assets/images/Calendar.png')),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(
                              text: 'Monthly',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            TextField(
                              enabled: false,
                              controller: _dateController,
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  hintText: 'Start date - End date',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              firstDate: startDate,
                              lastDate: DateTime(2025),
                            );
                            if (pickedDate != null) {
                              _dateController.text =
                                  pickedDate.toString().split(' ')[0];
                            }
                          },
                          child: Image.asset('assets/images/Calendar.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(-10, 0),
                      child: Transform.scale(
                        scale: 1.5,
                        child: Radio<int>(
                          value: 0,
                          groupValue: 1,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Make this Ad recurring',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        TextWidget(
                          text: 'Choose a custom duration (in hours)',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: TextWidget(
                      text: "${value.floor()} Hrs",
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-10, 0),
                  child: Slider(
                    value: value,
                    min: 0,
                    max: 24,
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
                Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(-10, 0),
                      child: Radio<int>(
                        value: 1,
                        groupValue: 1,
                        onChanged: (value) {},
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-10, 0),
                      child: const TextWidget(
                        text: 'Make this Ad recurring',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            PrimaryButton(
                label: "Select ad budget",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.selectAdBudget);
                },
                isEnabled: true),
          ],
        ),
      ),
    );
  }
}
