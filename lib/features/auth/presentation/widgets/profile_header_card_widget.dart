import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({
    super.key,
    required this.profileImage,
    required this.name,
    required this.businesstitle,
  });

  final String profileImage;
  final String name;
  final String businesstitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: SizeConfig.getProportionateScreenHeight(
              context: context, inputHeight: 50),
          width: SizeConfig.getProportionateScreenWidth(
              context: context, inputWidth: 50),
          child: Image.asset(profileImage),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextWidget(
                  text: name,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(width: 3.5),
                SizedBox(
                  width: SizeConfig.getProportionateScreenWidth(
                      context: context, inputWidth: 15),
                  height: SizeConfig.getProportionateScreenHeight(
                      context: context, inputHeight: 15),
                  child: Image.asset('assets/images/academic_cap.png'),
                ),
              ],
            ),
            TextWidget(
              text: businesstitle,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}
