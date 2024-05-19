import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/features/auth/presentation/widgets/facilitator_card_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/navbar_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      key: scaffoldKey,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  NavbarWidget(
                    scaffoldKey: scaffoldKey,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.homeScreenTwo);
                    },
                    child: const FacilitatorCard(
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
                    ),
                  ),
                  const SizedBox(height: 20),
                  const FacilitatorCard(
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
