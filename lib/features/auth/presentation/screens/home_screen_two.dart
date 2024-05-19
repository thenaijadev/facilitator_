import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/channel_overview_card_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/content_list_tile_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/navbar_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/profile_header_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  NavbarWidget(),
                  SizedBox(height: 30),
                  ProfileHeaderCard(
                    profileImage: 'assets/images/John_doe.png',
                    name: 'John Doe',
                    businesstitle: 'Business Facilitator',
                  ),
                  SizedBox(height: 30),
                  ChannelOverviewCard(
                    totalViews: '123k',
                    totalEarnings: '20000.00 NGN',
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'My Contents',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                      TextWidget(
                        text: 'View All',
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(244, 159, 28, 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                  ContentListTile(
                    numberOfViews: '133k views',
                    dateUploaded: '5 months ago',
                    image: 'assets/images/party_jollof.png',
                    title: 'How to cook party Jollof',
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
