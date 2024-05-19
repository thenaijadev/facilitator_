import 'package:facilitator/features/auth/presentation/widgets/facilitator_card_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const NavbarWidget(),
                  const SizedBox(height: 20),
                  FacilitatorCard(
                    name: 'John Doe',
                    profileImage: 'assets/images/John_doe.png',
                    businesstitle: 'Business Facilitator',
                    title: 'How to run a coffee BUSINESS in 2023',
                    time: '19:00',
                    numberfLikes: '200',
                    numberOfComments: '100',
                    numberOfViews: '133k views',
                    lastUploaded: '5 month ago',
                    businessVideo: 'assets/images/coffee_shop.jpg',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  FacilitatorCard(
                    name: 'John Doe',
                    profileImage: 'assets/images/John_doe.png',
                    businesstitle: 'Business Facilitator',
                    title: 'How to run a coffee BUSINESS in 2023',
                    time: '19:00',
                    numberfLikes: '200',
                    numberOfComments: '100',
                    numberOfViews: '133k views',
                    lastUploaded: '5 month ago',
                    businessVideo: 'assets/images/coffee_shop.jpg',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
