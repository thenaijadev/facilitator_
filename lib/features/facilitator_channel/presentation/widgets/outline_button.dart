import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    super.key,
    required this.onTap,
    required this.image,
    required this.label,
  });
  final VoidCallback onTap;
  final String image;
  final String label;

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
          inputHeight: 50,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 20),
            Flexible(
              child: TextWidget(
                text: label,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
