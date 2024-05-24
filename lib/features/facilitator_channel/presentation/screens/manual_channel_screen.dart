import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/channel_details_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/home_content_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/my_tab_view_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/resizeable_button.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/video_content_item_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/video_content_list.dart';
import 'package:facilitator/features/home/presentation/widgets/menu_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class MyChannelManual extends StatefulWidget {
  const MyChannelManual({super.key});

  @override
  State<MyChannelManual> createState() => _MyChannelManualState();
}

class _MyChannelManualState extends State<MyChannelManual> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: SizeConfig.getProportionateScreenHeight(
                  context: context,
                  inputHeight: 167,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      leading: Image.asset(
                        'assets/images/video.png',
                        color: AppColors.primary,
                      ),
                      title: const TextWidget(
                        text: 'Upload Video',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      leading: Image.asset('assets/images/upload_image.png'),
                      title: const TextWidget(
                        text: 'Upload Image',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      leading: Image.asset(
                        'assets/images/ai.png',
                        width: 24,
                        height: 24,
                      ),
                      title: const TextWidget(
                        text: 'Create a Content with AI',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavbarWidget(
                    scaffoldKey: scaffoldKey,
                  ),
                  _buildImageStack(),
                  const SizedBox(height: 70),
                  Column(children: [
                    const TextWidget(
                      text: 'Business World',
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 5),
                    const TextWidget(
                      text: '@business_world',
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(244, 159, 28, 1),
                    ),
                    const SizedBox(height: 5),
                    const TextWidget(
                      textAlign: TextAlign.center,
                      text:
                          'Business world is a vibrant business channel that captures the essence of beauty and individuality.',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 5),
                    const TextWidget(
                      text: 'Business (CASUAL)',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        ResizeableButton(
                          content: const TextWidget(
                            text: 'Edit Channel Profile',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                          width: 50,
                          onPressed: () {},
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: ResizeableButton(
                            content: Image.asset('assets/images/video.png'),
                            width: 10,
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: ResizeableButton(
                            content:
                                Image.asset('assets/images/diagram_up.png'),
                            width: 10,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset('assets/images/user_outline.png'),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'John Doe',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'Facilitator',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const ChannelDetails(
                        icon: 'assets/images/chat_dots.png',
                        label: 'johndoe@gmail.com'),
                    const ChannelDetails(
                        icon: 'assets/images/phone_blue.png',
                        label: '09014138731'),
                    const ChannelDetails(
                        icon: 'assets/images/map_point.png',
                        label: 'Ikoyi Lagos State'),
                  ]),
                  const SizedBox(height: 20),
                ],
              ),
              ResizeableButton(
                width: 30,
                content: const TextWidget(
                  text: '0 Views ',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              MyTabViewWidget(
                body: [
                  // Products(),
                  // CategoriesWidget(),
                  const HomeContentWidget(),
                  VideoContentList(
                    theresLabel: false,
                    categoryLabel: "Most Watched",
                    items: List.generate(
                      4,
                      (index) => VideoContentItemWidget(
                        numberOfLikes: "200",
                        numberOfComments: "200",
                        numberOfViews: "300k Views",
                        onComment: () {},
                        onLike: () {},
                        lastViewed: "3 months ago",
                        label: "How to run a coffee Business",
                        image: Image.asset(
                          "assets/images/coffee.png",
                          width: 140,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(),
                  const SizedBox(),
                  const SizedBox(),

                  // Description(),
                  // Reviews()
                ],
                tabLabels: const [
                  "Home",
                  "Content Video",
                  "Live Session",
                  "Reviews"
                ],
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

Stack _buildImageStack() {
  return Stack(
    alignment: AlignmentDirectional.bottomCenter,
    clipBehavior: Clip.none,
    children: [
      SizedBox(
        height: 170,
        width: double.infinity,
        child: PageView(
            controller: PageController(viewportFraction: .9),
            padEnds: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              3,
              (index) => Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 160,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/channel_cover_photo.png",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )),
      ),
      Positioned(
        bottom: -50,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/channelLogo.png'),
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.5,
              color: const Color.fromRGBO(3, 14, 79, 1),
            ),
          ),
        ),
      ),
    ],
  );
}
