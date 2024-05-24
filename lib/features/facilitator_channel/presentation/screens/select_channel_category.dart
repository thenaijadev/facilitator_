import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/category_list_widget.dart';
import 'package:flutter/material.dart';

class SelectChannelCategoryScreen extends StatefulWidget {
  const SelectChannelCategoryScreen({super.key});

  @override
  State<SelectChannelCategoryScreen> createState() =>
      _SelectChannelCategoryScreenState();
}

class _SelectChannelCategoryScreenState
    extends State<SelectChannelCategoryScreen> {
  List<Map<String, dynamic>> category = [
    {
      'title': 'Culinary Arts',
      'value': true,
    },
    {
      'title': 'Personal Development',
      'value': false,
    },
    {
      'title': 'Personal Finance',
      'value': false,
    },
    {
      'title': 'Language Learning',
      'value': false,
    },
    {
      'title': 'Photography',
      'value': false,
    },
    {
      'title': 'Health and Fitness',
      'value': false,
    },
    {
      'title': 'Art and Creativity',
      'value': false,
    },
    {
      'title': 'Technology and IT',
      'value': false,
    },
    {
      'title': 'Skill Development',
      'value': false,
    },
    {
      'title': 'Medical',
      'value': false,
    },
    {
      'title': 'Fashion',
      'value': false,
    },
    {
      'title': 'Geography and Travel',
      'value': false,
    },
    {
      'title': ' Business',
      'value': false,
    },
    {
      'title': ' Music',
      'value': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Select  facilitator Category",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (context, index) => CategoryList(
                    onChanged: (val) {
                      setState(() {
                        category[index]["value"] = val;
                      });
                    },
                    value: category[index]["value"],
                    title: category[index]["title"],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                label: ' Add To Vendor Category',
                onPressed: () {},
                isEnabled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
