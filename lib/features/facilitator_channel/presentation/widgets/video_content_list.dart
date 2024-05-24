import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VideoContentList extends StatelessWidget {
  const VideoContentList(
      {super.key,
      required this.categoryLabel,
      required this.items,
      this.theresLabel = true});
  final String categoryLabel;
  final List<Widget> items;
  final bool theresLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (theresLabel)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextWidget(
              text: categoryLabel,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ...items
      ],
    );
  }
}
