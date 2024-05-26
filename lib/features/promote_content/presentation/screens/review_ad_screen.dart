import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ReviewAdScreen extends StatelessWidget {
  const ReviewAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Review ad",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/coffee_shop.png'),
                        const SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Ad Description',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'How to start a coffee............',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset('assets/images/edit_icon.png'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/users.png'),
                        const SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Audience',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'Nigeria',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidget(
                              text: 'Age 18-65+',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidget(
                              text: 'All gender',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset('assets/images/edit_icon.png'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/card.png'),
                        const SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'Ad Budget',
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              text: 'Internal reach',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidget(
                              text: '2 month plan- NGN 2000',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset('assets/images/edit_icon.png'),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Total Budget',
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                    TextWidget(
                      text: 'NGN 2000',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const TextWidget(
                  text: 'You can pause your ad, once its starts',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            PrimaryButton(
              label: "Proceed to Pay for ad",
              onPressed: () {
                Navigator.pushNamed(context, Routes.payForAd);
              },
              isEnabled: true,
            ),
          ],
        ),
      )),
    );
  }
}
