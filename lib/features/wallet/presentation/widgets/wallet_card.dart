import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
    required this.cardNumber,
    required this.amount,
    required this.name,
  });
  final String cardNumber;
  final String amount;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getProportionateScreenWidth(
        context: context,
        inputWidth: 390,
      ),
      height: SizeConfig.getProportionateScreenHeight(
        context: context,
        inputHeight: 209,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 26),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextWidget(
                color: Colors.white,
                text: cardNumber,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          TextWidget(
            textAlign: TextAlign.center,
            color: Colors.white,
            text: 'NGN $amount',
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(
                textAlign: TextAlign.start,
                color: Colors.white,
                text: name,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
