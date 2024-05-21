import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/features/home/presentation/widgets/notification_menu_item_widget.dart';
import 'package:flutter/material.dart';

import 'menu_item_widget.dart';
import 'privacy_policy_widget.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/images/splash_image.png",
            width: 180,
          ),
          const SizedBox(
            height: 35,
          ),
          const NotificationMenuItem(),
          MenuItemWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.myWallet);
              },
              iconPath: "assets/images/wallet_1.png",
              label: "Wallet"),
          MenuItemWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.profile);
              },
              iconPath: "assets/images/content.png",
              imageWidth: 22,
              label: "My Content"),
          MenuItemWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.createFacilitatorChannel);
              },
              iconPath: "assets/images/channel.png",
              imageWidth: 28,
              label: "My Channels"),
          MenuItemWidget(
              onTap: () {
                Navigator.pushNamed(context, Routes.profile);
              },
              iconPath: "assets/images/profile.png",
              imageWidth: 22,
              label: "My Profile"),
          MenuItemWidget(
              onTap: () {},
              iconPath: "assets/images/money.png",
              label: "Payment Method"),
          MenuItemWidget(
              onTap: () {},
              iconPath: "assets/images/bookmark.png",
              label: "Book Session"),
          MenuItemWidget(
              onTap: () {},
              iconPath: "assets/images/tag.png",
              imageColor: Colors.white,
              label: "Promotions"),
          MenuItemWidget(
            onTap: () {},
            iconPath: "assets/images/logout.png",
            label: "Logout",
            color: const Color(0xffFF0000),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/upgrade_to_premium.png",
            width: 220,
          ),
          const SizedBox(
            height: 20,
          ),
          const Flexible(child: PrivacyPolicyWidget()),
        ],
      ),
    );
  }
}
