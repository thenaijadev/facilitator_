import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class WalletAction extends StatelessWidget {
  const WalletAction({
    super.key,
    required this.image,
    required this.action,
    required this.onTap,
    required this.color,
  });
  final String image;
  final String action;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.fundWallet);
      },
      child: Container(
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 115,
        ),
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 91,
        ),
        margin: const EdgeInsets.only(right: 8.67),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(230, 231, 237, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
                radius: 25,
                backgroundColor: const Color.fromRGBO(3, 14, 79, 0.2),
                child: Image.asset(image)),
            TextWidget(
              text: action,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
