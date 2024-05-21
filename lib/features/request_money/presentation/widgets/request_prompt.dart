import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RequestPrompt extends StatelessWidget {
  const RequestPrompt({
    super.key,
    required this.amount,
    required this.recipient,
  });
  final String amount;
  final String recipient;

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
        inputHeight: 118,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextWidget(
        text:
            'A money request of NGN $amount has been sent to this number $recipient',
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
