import 'package:facilitator/features/auth/presentation/widgets/content_list_tile_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class MyContentScreen extends StatefulWidget {
  const MyContentScreen({super.key});

  @override
  State<MyContentScreen> createState() => _MyContentScreenState();
}

class _MyContentScreenState extends State<MyContentScreen> {
  late GlobalKey<FormFieldState> searchKey;

  @override
  void initState() {
    searchKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 3,
        title: Padding(
          padding: const EdgeInsets.only(right: 20.0),
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
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                ContentListTile(
                  numberOfViews: '133k views',
                  dateUploaded: '5 months ago',
                  image: 'assets/images/party_jollof.png',
                  title: 'How to cook party Jollof',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
