import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/features/auth/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Image.asset('assets/images/logo.png'),
        const SizedBox(height: 9.39),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: SizeConfig.getProportionateScreenWidth(
                  context: context, inputWidth: 300),
              height: SizeConfig.getProportionateScreenHeight(
                  context: context, inputHeight: 40),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.inputGrey,
                ),
              ),
              child: const SearchBarWidget(
                  image: 'assets/images/search_icon.png',
                  hintText: 'Search my content'),
            ),
            Image.asset('assets/images/bell_icon.png'),
          ],
        )
      ],
    );
  }
}
