import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/core/widgets/white_popup.dart';
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
        trailing: GestureDetector(
          onTap: () {
            showWhitePopup(
              context: context,
              widget: Container(
                width: SizeConfig.getProportionateScreenWidth(
                    context: context, inputWidth: 304),
                height: SizeConfig.getProportionateScreenHeight(
                    context: context, inputHeight: 158),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.secondary),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/pen_2.png",
                              width: 24,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const TextWidget(
                              text: "Edit",
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.promoteContent);
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/tag_blue.png",
                              width: 24,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const TextWidget(
                              text: "Promote Content",
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/trash.png",
                            width: 24,
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          const TextWidget(
                            text: "Delete",
                            fontSize: 21,
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          child: const Icon(
            Icons.more_vert,
            color: AppColors.primary,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
