import 'package:facilitator/app/widgets/app_bar.dart';
import 'package:facilitator/features/auth/presentation/widgets/content_list_tile_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class MyContentScreen extends StatefulWidget {
  const MyContentScreen({super.key});

  @override
  State<MyContentScreen> createState() => _MyContentScreenState();
}

class _MyContentScreenState extends State<MyContentScreen> {
  late GlobalKey<FormFieldState> inputKey;

  @override
  void initState() {
    inputKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        label: Transform.scale(
          scaleY: .8,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0, right: 20),
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
                hintText: "Search your content",
                onChanged: (val) {},
                textFieldkey: inputKey),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: List.generate(
            10,
            (index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: ContentListTile(
                numberOfViews: '133k views',
                dateUploaded: '5 months ago',
                image: 'assets/images/party_jollof.png',
                title: 'How to cook party Jollof',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
