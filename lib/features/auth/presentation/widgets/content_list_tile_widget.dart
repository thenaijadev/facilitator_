import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ContentListTile extends StatelessWidget {
  const ContentListTile({
    super.key,
    required this.numberOfViews,
    required this.dateUploaded,
    required this.image,
    required this.title,
  });

  final String numberOfViews;
  final String dateUploaded;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(3, 14, 79, 0.1),
            blurRadius: 10,
            offset: Offset(5, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 0),
        leading: Image.asset(image),
        title: TextWidget(
          text: title,
          color: AppColors.primary,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        subtitle: TextWidget(
          text: '$numberOfViews. $dateUploaded',
          color: AppColors.primary,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        trailing: const Icon(
          Icons.more_vert,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
