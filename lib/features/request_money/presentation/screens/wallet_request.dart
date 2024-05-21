import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/request_money/presentation/widgets/contact_card.dart';
import 'package:facilitator/features/request_money/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class WalletRequest extends StatefulWidget {
  const WalletRequest({super.key});

  @override
  State<WalletRequest> createState() => _WalletRequestState();
}

class _WalletRequestState extends State<WalletRequest> {
  List<Map<String, dynamic>> contacts = [
    {
      "image": "assets/images/contact_image.png",
      "title": "Abigail",
      'subtitle': '+234 90379745545',
      'checked': true,
    },
    {
      "image": "assets/images/contact_image.png",
      "title": "Blessing",
      'subtitle': '+234 90379745545',
      'checked': false,
    },
    {
      "image": "assets/images/contact_image.png",
      "title": "Comfort",
      'subtitle': '+234 90379745545',
      'checked': false,
    },
    {
      "image": "assets/images/contact_image.png",
      "title": "Duke",
      'subtitle': '+234 90379745545',
      'checked': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Request Money",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(),
              const SizedBox(height: 20),
              const TextWidget(
                text: 'Saved Recipient ',
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.selectRecipient);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/select.png'),
                        const SizedBox(height: 20),
                        const TextWidget(
                          text: 'Select recipient',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.amountRequest);
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/contact_image.png'),
                        const SizedBox(height: 20),
                        const TextWidget(
                          text: 'Abigail',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TextWidget(
                text: 'All Contacts',
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 30),
              Flexible(
                child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) => ContactCard(
                    image: contacts[index]["image"],
                    value: contacts[index]["checked"],
                    title: contacts[index]["title"],
                    subtitle: contacts[index]["subtitle"],
                    onTap: () {
                      Navigator.pushNamed(context, Routes.amountRequest);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
