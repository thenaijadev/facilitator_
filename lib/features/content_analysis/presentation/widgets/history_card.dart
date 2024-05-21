import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    super.key,
    required this.graph,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.image,
    required this.onTap,
  });

  final String graph;
  final String title;
  final String subtitle;
  final String amount;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 390,
        ),
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 70,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(3, 14, 79, 0.1),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: title,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                TextWidget(
                  text: subtitle,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
            Image.asset(graph),
            TextWidget(
              text: amount,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
