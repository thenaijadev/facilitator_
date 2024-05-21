import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });
  final bool value;
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: SizeConfig.getProportionateScreenWidth(
          context: context,
          inputWidth: 390,
        ),
        height: SizeConfig.getProportionateScreenHeight(
          context: context,
          inputHeight: 94,
        ),
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(3, 14, 79, 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(image),
          title: TextWidget(
            text: title,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          subtitle: TextWidget(
            text: subtitle,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          trailing: Checkbox(
            value: value,
            onChanged: (val) {},
          ),
        ),
      ),
    );
  }
}
