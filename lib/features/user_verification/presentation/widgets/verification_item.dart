import 'package:dotted_border/dotted_border.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VerificationItem extends StatelessWidget {
  const VerificationItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onTap,
      required this.isCompleted});
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: DottedBorder(
          dashPattern: const [6, 6],
          radius: const Radius.circular(20),
          borderType: BorderType.Rect,
          color: const Color.fromARGB(113, 3, 14, 79),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: isCompleted
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextWidget(
                        text: title,
                        color: const Color(0xffF49F1C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          const TextWidget(
                            text: "Successful",
                            color: Color(0xff374FC7),
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                          Checkbox(value: isCompleted, onChanged: (cal) {})
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            image,
                            width: 24,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextWidget(
                            text: title,
                            color: const Color(0xffF49F1C),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextWidget(
                        text: subtitle,
                        textAlign: TextAlign.center,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffD9D9D9),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
