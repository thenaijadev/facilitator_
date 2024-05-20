import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.image,
    required this.username,
    required this.comment,
    required this.reply,
    required this.timeCommented,
  });
  final String image;
  final String username;
  final String comment;
  final String reply;
  final String timeCommented;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image),
        const SizedBox(width: 10),
        SizedBox(
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: username,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                text: comment,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              TextWidget(
                text: reply,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('Huge-icon.png'),
            TextWidget(
              text: timeCommented,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ],
        )
      ],
    );
  }
}
