import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/horizontal_divider.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/profile/presentation/widgets/profile_action_widget.dart';
import 'package:facilitator/features/profile/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class FacilitatorProfileScreen extends StatefulWidget {
  const FacilitatorProfileScreen({super.key});

  @override
  State<FacilitatorProfileScreen> createState() =>
      _FacilitatorProfileScreenState();
}

class _FacilitatorProfileScreenState extends State<FacilitatorProfileScreen> {
  bool appNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        "icon": "assets/images/bell_icon.png",
        "label": "App Notification",
        "trailing": const Row(),
        "onTap": () {}
      },
      {
        "icon": "assets/images/wallet.png",
        "onTap": () {
          Navigator.pushNamed(context, Routes.myWallet);
        },
        "label": "Wallet",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          // Navigator.pushNamed(context, Routes.myWallet);
        },
        "icon": "assets/images/list_icon.png",
        "label": "My Content",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {
          Navigator.pushNamed(context, Routes.paymentMethod);
        },
        "icon": "assets/images/banknote.png",
        "label": "Payment method",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/book.png",
        "label": "Booked Sessions",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/settings.png",
        "label": "Settings",
        "trailing": const Icon(
          Icons.chevron_right,
          size: 30,
        )
      },
      {
        "onTap": () {},
        "icon": "assets/images/call_chat.png",
        "label": "Customer Support",
        "trailing": const TextWidget(text: '')
      },
      {
        "onTap": () {},
        "icon": "assets/images/logout.png",
        "label": "Log out",
        "trailing": const TextWidget(text: '')
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.secondary,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextWidget(
          text: "My profile",
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            height: SizeConfig.getProportionateScreenHeight(
                context: context, inputHeight: 700),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              children: [
                const ProfileHeader(),
                const HorizontalDivider(
                  paddingVertical: 20,
                ),
                Column(
                  children: List.generate(
                    items.length,
                    (index) => index == 0
                        ? ProfileActionWidget(
                            onTap: () {},
                            icon: items[index]["icon"],
                            label: items[index]["label"],
                            trailing: Transform.scale(
                              scale: .8,
                              child: Row(
                                children: [
                                  Switch(
                                    inactiveThumbColor:
                                        Theme.of(context).colorScheme.primary,
                                    activeTrackColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: appNotificationEnabled,
                                    onChanged: ((value) {
                                      setState(() {
                                        appNotificationEnabled = value;
                                      });
                                    }),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  TextWidget(
                                    text: appNotificationEnabled ? "On" : "Off",
                                    fontSize: 16,
                                  )
                                ],
                              ),
                            ),
                          )
                        : ProfileActionWidget(
                            icon: items[index]["icon"],
                            label: items[index]["label"],
                            trailing: items[index]["trailing"],
                            onTap: items[index]["onTap"],
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             alignment: AlignmentDirectional.bottomCenter,
//             clipBehavior: Clip.none,
//             children: [
//               SizedBox(
//                 height: 170,
//                 width: double.infinity,
//                 child: PageView(
//                     padEnds: true,
//                     scrollDirection: Axis.horizontal,
//                     children: List.generate(
//                       3,
//                       (index) => Container(
//                         width: double.infinity,
//                         height: 160,
//                         decoration: const BoxDecoration(
//                           color: AppColors.primary,
//                         ),
//                         child: const Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 34),
//                             Padding(
//                               padding: EdgeInsets.only(left: 20.0),
//                               child: TextWidget(
//                                 text: 'My Profile',
//                                 color: Colors.white,
//                                 fontSize: 28,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(height: 34),
//                           ],
//                         ),
//                       ),
//                     )),
//               ),
//               Positioned(
//                 bottom: -100,
//                 child: Container(
//                   width: SizeConfig.getProportionateScreenWidth(
//                       context: context, inputWidth: 390),
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20),
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 32.5),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 20.0),
//                             child: Row(
//                               children: [
//                                 Image.asset('assets/images/profile_image.png'),
//                                 const SizedBox(width: 42),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const TextWidget(
//                                       text: 'Sanni Kayinsola',
//                                       fontSize: 21,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     const TextWidget(
//                                       text: '23, Palm Avenue, Isolo,',
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     const TextWidget(
//                                       text: 'Lagos state',
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     const TextWidget(
//                                       text: '+234 812 3456 789',
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                     Container(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 8, vertical: 3),
//                                       decoration: BoxDecoration(
//                                         color: AppColors.inputGrey,
//                                         borderRadius: BorderRadius.circular(15),
//                                       ),
//                                       child: const Row(
//                                         children: [
//                                           Icon(
//                                             Icons.verified,
//                                             color:
//                                                 Color.fromRGBO(244, 159, 28, 1),
//                                           ),
//                                           TextWidget(
//                                             text: 'Verified',
//                                             fontSize: 12,
//                                             fontWeight: FontWeight.w400,
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 43),
//                           SizedBox(
//                             child: Divider(
//                               color: AppColors.inputGrey,
//                             ),
//                           ),
//                           const SizedBox(height: 18),
//                           ListTile(
//                             leading: Image.asset('assets/images/bell_icon.png'),
//                             title: TextWidget(
//                               text: 'App Notification',
//                               color: AppColors.primary,
//                               fontWeight: FontWeight.w400,
//                               fontSize: 21,
//                             ),
//                             trailing: TextWidget(
//                               text: 'On',
//                               color: AppColors.primary,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
