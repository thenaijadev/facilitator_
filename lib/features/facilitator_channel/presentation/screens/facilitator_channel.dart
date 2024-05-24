import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
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
  PageController controller = PageController(viewportFraction: .9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuWidget(),
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  NavbarWidget(
                    scaffoldKey: scaffoldKey,
                  ),
                  const SizedBox(height: 20),
                  _buildImageStack(),
                  const SizedBox(height: 80),
                  _buildInformation(),
                ],
              ),
              PrimaryButton(
                label: 'Create a  Channel',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.createFacilitatorChannel);
                },
                isEnabled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildInformation() {
    return Column(children: [
      Image.asset('assets/images/empty.png'),
      const SizedBox(height: 20),
      const TextWidget(
        text: 'You have no channel',
        fontSize: 21,
        fontWeight: FontWeight.w500,
      ),
      const SizedBox(height: 10),
      const TextWidget(
        textAlign: TextAlign.center,
        text: 'Tap on either buttons above to create your first channel',
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    ]);
  }

  Stack _buildImageStack() {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 170,
          width: double.infinity,
          child: PageView(
              controller: controller,
              padEnds: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                3,
                (index) => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(3, 14, 79, 1),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/add_image_blue.png",
                        width: 24,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextWidget(
                        textAlign: TextAlign.center,
                        text: "Upload cover photo",
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xffF49F1C),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )),
        ),
        Positioned(
          bottom: -50,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.5,
                color: const Color.fromRGBO(3, 14, 79, 1),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Image.asset(
                  "assets/images/add_image_blue.png",
                  width: 24,
                ),
                const TextWidget(
                  textAlign: TextAlign.center,
                  text: "Logo",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xffF49F1C),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
