import 'package:facilitator/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ResizeableButton extends StatelessWidget {
  const ResizeableButton({
    super.key,
    required this.width,
    required this.content,
    required this.onPressed,
  });
  final double width;
  final Widget content;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size(width, 50),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(
                width: .5,
                color: Color(0xff030E4F),
              ),
            ),
            backgroundColor: AppColors.primary),
        child: content);
  }
}
