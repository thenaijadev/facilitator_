import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: const EdgeInsets.all(0),
      value: value,
      onChanged: (val) {},
      title: Transform.translate(
        offset: const Offset(-18, 0),
        child: TextWidget(
          text: title,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
