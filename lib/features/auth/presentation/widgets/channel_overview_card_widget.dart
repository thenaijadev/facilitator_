import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChannelOverviewCard extends StatelessWidget {
  const ChannelOverviewCard({
    super.key,
    required this.totalViews,
    required this.totalEarnings,
  });

  final String totalViews;
  final String totalEarnings;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.getProportionateScreenHeight(
          context: context, inputHeight: 168),
      width: SizeConfig.getProportionateScreenWidth(
          context: context, inputWidth: 390),
      padding: const EdgeInsets.only(right: 20, left: 20, top: 25.5),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF030E4F), Color(0xFF0720B5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: 'Channel Overview',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(right: 74.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  text: 'Total Views',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(248, 249, 250, 1),
                ),
                TextWidget(
                  text: totalViews,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                  text: 'Total Earnings:',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(248, 249, 250, 1),
                ),
                TextWidget(
                  text: totalEarnings,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
