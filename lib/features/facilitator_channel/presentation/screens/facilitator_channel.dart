import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/cover_image_stack.dart';
import 'package:facilitator/features/home/presentation/widgets/menu_widget.dart';
import 'package:facilitator/features/home/presentation/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

class FacilitatorChannel extends StatefulWidget {
  const FacilitatorChannel({super.key});

  @override
  State<FacilitatorChannel> createState() => _FacilitatorChannelState();
}

class _FacilitatorChannelState extends State<FacilitatorChannel> {
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
                  CoverImageStack(
                    controller: PageController(),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 80),
                      Image.asset('empty.png'),
                      const SizedBox(height: 20),
                      const TextWidget(
                        text: 'You have no channel',
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 10),
                      const TextWidget(
                        textAlign: TextAlign.center,
                        text:
                            'Tap on either buttons above to create your first channel',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 140),
                    ],
                  ),
                  PrimaryButton(
                    label: 'Create a  Channel',
                    onPressed: () {},
                    isEnabled: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
