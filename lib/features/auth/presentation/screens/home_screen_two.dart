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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
