import 'package:facilitator/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.image,
    required this.hintText,
  });

  final String image;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(image),
        const SizedBox(width: 5),
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.inputGrey,
              ),
              contentPadding: const EdgeInsets.only(bottom: 10),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
