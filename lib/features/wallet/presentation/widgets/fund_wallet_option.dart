import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FundWalltetOption extends StatelessWidget {
  const FundWalltetOption({
    super.key,
    required this.optionText,
    required this.option,
    this.color,
    this.imageColor,
    required this.onTap,
    this.textColor,
  });
  final String optionText;
  final String option;
  final Color? color;
  final Color? imageColor;
  final VoidCallback onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 106,
        ),
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 390,
        ),
        padding: const EdgeInsets.only(right: 20, left: 20, top: 12.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: const Color.fromRGBO(3, 14, 79, 0.2),
              child: Image.asset(
                'assets/images/fund.png',
                color: imageColor,
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: option,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  TextWidget(
                    text: optionText,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
