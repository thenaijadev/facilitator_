import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/content/presentation/widgets/comment_widget.dart';
import 'package:flutter/material.dart';

class ContentInfoScreen extends StatefulWidget {
  const ContentInfoScreen({super.key});

  @override
  State<ContentInfoScreen> createState() => _ContentInfoScreenState();
}

class _ContentInfoScreenState extends State<ContentInfoScreen> {
  late GlobalKey<FormFieldState> searchKey;

  @override
  void initState() {
    searchKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: 'How to cook party Jollof',
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.getProportionateScreenHeight(
                  context: context,
                  inputHeight: 290,
                ),
                width: SizeConfig.getProportionateScreenWidth(
                  context: context,
                  inputWidth: 430,
                ),
                child: Image.asset('party_jollof_video.png'),
              ),
              const SizedBox(height: 14),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'You posted:',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    TextWidget(
                      text: 'How to cook party jollof',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 29),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12.5),
                              child: TextWidget(
                                text: '120k',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextWidget(
                              text: 'Likes',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextWidget(
                              text: '120,347',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'Views',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextWidget(
                              text: '2020',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'Feb 11',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 27),
                    TextWidget(
                      text: 'More info:',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 20),
                    TextWidget(
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Massa sit consequat ornare imperdiet viverra odio platea duis. Gravida tempor quis semper ornare ut dui. A et elementum in molestie dolor leo accumsan enim penatibus. Tincidunt lorem feugiat non sagittis quis pharetra vivamus.',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 20),
                    TextWidget(
                      text: 'Comments',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 10),
                    Comment(
                      image: 'assets/images/sarah_reves.png',
                      username: 'Sarah Reves',
                      comment:
                          'I can’t wait to apply what i have learned from this video. Keep up with the good work!',
                      reply: 'Reply',
                      timeCommented: '1 hr ',
                    ),
                    SizedBox(height: 10),
                    Comment(
                      image: 'assets/images/sarah_reves.png',
                      username: 'Sarah Reves',
                      comment:
                          'I can’t wait to apply what i have learned from this video. Keep up with the good work!',
                      reply: 'Reply',
                      timeCommented: '1 hr ',
                    ),
                    SizedBox(height: 10),
                    Comment(
                      image: 'assets/images/sarah_reves.png',
                      username: 'Sarah Reves',
                      comment:
                          'I can’t wait to apply what i have learned from this video. Keep up with the good work!',
                      reply: 'Reply',
                      timeCommented: '1 hr ',
                    ),
                    SizedBox(height: 10),
                    Comment(
                      image: 'assets/images/sarah_reves.png',
                      username: 'Sarah Reves',
                      comment:
                          'I can’t wait to apply what i have learned from this video. Keep up with the good work!',
                      reply: 'Reply',
                      timeCommented: '1 hr ',
                    ),
                    SizedBox(height: 10),
                    Comment(
                      image: 'assets/images/sarah_reves.png',
                      username: 'Sarah Reves',
                      comment:
                          'I can’t wait to apply what i have learned from this video. Keep up with the good work!',
                      reply: 'Reply',
                      timeCommented: '1 hr ',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
