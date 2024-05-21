import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/send_money/presentation/widgets/bank_card.dart';
import 'package:flutter/material.dart';

class SelectBankToWithdraw extends StatelessWidget {
  const SelectBankToWithdraw({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> banks = [
      {
        "logo": "assets/images/access_bank.png",
        "name": "Access Bank",
      },
      {
        "logo": "assets/images/eco_bank.png",
        "name": "Ecobank Nigeria",
      },
      {
        "logo": "assets/images/fidelity_bank.png",
        "name": "Fidelity Nigeria",
      },
      {
        "logo": "assets/images/first_bank.png",
        "name": "First Bank of Nigeria",
      },
      {
        "logo": "assets/images/fcmb.png",
        "name": "First City Monument Bank ",
      },
      {
        "logo": "assets/images/gt_bank.png",
        "name": "Guaranty Trust Bank ",
      },
      {
        "logo": "assets/images/heritage_bank.png",
        "name": "Heritage Bank",
      },
      {
        "logo": "assets/images/jaiz_bank.png",
        "name": "Jaiz Bank",
      },
      {
        "logo": "assets/images/keystone_bank.jpeg",
        "name": "Keystone Bank",
      },
      {
        "logo": "assets/images/kuda_bank.png",
        "name": "Kuda Bank",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Select Bank",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: banks.length,
                itemBuilder: (context, index) => BankCard(
                  logo: banks[index]["logo"],
                  name: banks[index]["name"],
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
