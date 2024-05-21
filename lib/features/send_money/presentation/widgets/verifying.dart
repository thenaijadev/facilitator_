import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Verifying extends StatelessWidget {
  const Verifying({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: SizeConfig.getProportionateScreenWidth(
        context: context,
        inputWidth: 390,
      ),
      height: SizeConfig.getProportionateScreenHeight(
        context: context,
        inputHeight: 50,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(3, 14, 79, 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.circle_outlined,
            color: AppColors.primary,
            size: 30,
          ),
          SizedBox(width: 20),
          TextWidget(
            text: 'Verifying account details',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.primary,
          )
        ],
      ),
    );
  }
}
