import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/profile_header_card_widget.dart';
import 'package:flutter/material.dart';

class FacilitatorCard extends StatelessWidget {
  const FacilitatorCard({
    super.key,
    required this.name,
    required this.profileImage,
    required this.businesstitle,
    required this.title,
    required this.time,
    required this.numberfLikes,
    required this.numberOfComments,
    required this.numberOfViews,
    required this.lastUploaded,
    required this.businessVideo,
  });

  final String name;
  final String profileImage;
  final String businesstitle;
  final String title;
  final String time;
  final String numberfLikes;
  final String numberOfComments;
  final String numberOfViews;
  final String lastUploaded;
  final String businessVideo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getProportionateScreenWidth(
          context: context, inputWidth: 410),
      height: SizeConfig.getProportionateScreenHeight(
          context: context, inputHeight: 391),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(3, 14, 79, 0.1),
              blurRadius: 10,
              offset: Offset(5, 4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeaderCard(
              profileImage: profileImage,
              name: name,
              businesstitle: businesstitle),
          const SizedBox(height: 15),
          Container(
            width: SizeConfig.getProportionateScreenWidth(
                context: context, inputWidth: 390),
            height: SizeConfig.getProportionateScreenHeight(
                context: context, inputHeight: 239),
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(businessVideo),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextWidget(
                      text: time,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                Image.asset('assets/images/play.png'),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 18.5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(33, 36, 41, 0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 5),
                              TextWidget(
                                text: numberfLikes,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Image.asset('assets/images/comment_icon.png'),
                              const SizedBox(width: 5),
                              TextWidget(
                                text: numberOfComments,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/save.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextWidget(
            text: title,
            fontSize: 17.5,
            fontWeight: FontWeight.w500,
          ),
          TextWidget(
            text: '$numberOfViews. $lastUploaded',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
