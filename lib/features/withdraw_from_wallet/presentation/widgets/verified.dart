import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Verified extends StatelessWidget {
  const Verified({
    super.key,
    required this.name,
  });
  final String name;

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
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.only(left: 0),
        value: true,
        onChanged: (val) {},
        title: Transform.translate(
          offset: const Offset(-12, 0),
          child: TextWidget(
            text: name,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
