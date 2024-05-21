import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    super.key,
    required this.logo,
    required this.name,
    required this.onTap,
  });
  final String logo;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 390,
        ),
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 80,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(
          left: 20,
        ),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(3, 14, 79, 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(logo),
          title: TextWidget(
            text: name,
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
