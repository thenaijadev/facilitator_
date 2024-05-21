import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({
    super.key,
    required this.amount,
  });
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 217,
        ),
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 50,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.inputGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextWidget(
          textAlign: TextAlign.center,
          text: amount,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
