import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class SelectRecipientScreen extends StatelessWidget {
  const SelectRecipientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Select Recipient",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/empty.png'),
            const SizedBox(height: 20),
            const TextWidget(
              textAlign: TextAlign.center,
              text:
                  'You have no saved recipient, you can add recipient while requesting for money',
              fontWeight: FontWeight.w500,
              fontSize: 21,
            ),
          ],
        ),
      ),
    );
  }
}
