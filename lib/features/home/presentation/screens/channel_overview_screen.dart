import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/channel_overview_card_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/content_list_tile_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/menu_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/navbar_widget.dart';
import 'package:facilitator/features/profile/presentation/widgets/profile_header_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChannelOverviewScreen extends StatefulWidget {
  const ChannelOverviewScreen({super.key});

  @override
  State<ChannelOverviewScreen> createState() => _ChannelOverviewScreenState();
}

class _ChannelOverviewScreenState extends State<ChannelOverviewScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const MenuWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          showBottomSheet(context: context);
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  NavbarWidget(
                    scaffoldKey: scaffoldKey,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, Routes.facilitatorProfileScreen);
                    },
                    child: const ProfileHeaderCard(
                      profileImage: 'assets/images/John_doe.png',
                      name: 'John Doe',
                      businesstitle: '@Johndoeski',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const ChannelOverviewCard(
                    totalViews: '123k',
                    totalEarnings: '20000.00 NGN',
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: 'My Contents',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                      TextWidget(
                        text: 'View All',
                        onTap: () =>
                            Navigator.pushNamed(context, Routes.myContent),
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(244, 159, 28, 1),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                  const ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet({required BuildContext context}) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: SizeConfig.getProportionateScreenHeight(
                context: context, inputHeight: 159),
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
                  leading: Image.asset('assets/images/add_square.png'),
                  title: const TextWidget(
                    text: 'Create a Content',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ListTile(
                  leading: Image.asset('assets/images/add_square.png'),
                  title: const TextWidget(
                    text: 'Create a Channel',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          );
        });
  }
}
