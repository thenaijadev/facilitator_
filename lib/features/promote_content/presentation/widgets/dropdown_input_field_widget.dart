import 'package:facilitator/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class DropdownInputFieldWidget extends StatelessWidget {
  const DropdownInputFieldWidget({
    super.key,
    required this.hintText,
  });
  final String hintText;
  // final on hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getProportionateScreenWidth(
        context: context,
        inputWidth: 390,
      ),
      height: SizeConfig.getProportionateScreenHeight(
        context: context,
        inputHeight: 48,
      ),
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Flexible(
            child: Image.asset('assets/images/arrow_down.png'),
          ),
        ],
      ),
    );
  }
}
