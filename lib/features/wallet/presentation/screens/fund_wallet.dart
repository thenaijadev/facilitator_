import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/fund_wallet_option.dart';
import 'package:flutter/material.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Fund Wallet",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FundWalletOption(
                  optionText: 'Fund directly with your bank card',
                  option: 'Fund wiith card',
                  textColor: Theme.of(context).colorScheme.primary,
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.fundWithCard);
                  },
                ),
                const SizedBox(height: 20),
                FundWalletOption(
                  optionText: 'Fund directly with your bank account',
                  option: 'Fund with bank account',
                  textColor: Theme.of(context).colorScheme.primary,
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.fundWithBank);
                  },
                ),
                const SizedBox(height: 20),
                FundWalletOption(
                  opacity: .5,
                  textColor: Theme.of(context).colorScheme.primary,
                  optionText: 'Fund with USSD ',
                  option: 'Fund directly with your USSD',
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
