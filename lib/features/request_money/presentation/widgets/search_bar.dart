import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
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
        inputHeight: 40,
      ),
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(
        left: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inputGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Flexible(
            child: Image.asset('assets/images/search.png'),
          ),
          const SizedBox(width: 5),
          const Flexible(
              child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 10),
              border: InputBorder.none,
              hintText: 'Enter name  or phone number',
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.inputGrey,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
