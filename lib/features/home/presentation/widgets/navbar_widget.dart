import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late GlobalKey<FormFieldState> searchKey;

  @override
  void initState() {
    searchKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Image.asset('assets/images/logo.png'),
        const SizedBox(height: 9.39),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    widget.scaffoldKey.currentState?.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 25,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Transform.scale(
                  scaleY: .8,
                  child: InputFieldWidget(
                      validator: (p0) {
                        return null;
                      },
                      verticalContentPadding: 0,
                      prefixicon: Image.asset(
                        "assets/images/search.png",
                      ),
                      enabledBorderRadius: 5,
                      hintColor: const Color.fromARGB(120, 58, 58, 58),
                      hintSize: 16,
                      fontWeight: FontWeight.w500,
                      hintText: "Search my content",
                      onChanged: (val) {},
                      textFieldkey: searchKey),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.notifications);
                  },
                  child: Image.asset(
                    "assets/images/bell.png",
                    width: 24,
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
