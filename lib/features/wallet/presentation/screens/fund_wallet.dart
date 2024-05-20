import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/fund_wallet_option.dart';
import 'package:flutter/material.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: 'Fund Wallet',
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FundWalltetOption(
                  optionText: 'Fund with card',
                  option: 'Fund directly with your bank card',
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                FundWalltetOption(
                  optionText: 'Fund with card',
                  option: 'Fund directly with your bank card',
                  color: const Color.fromRGBO(3, 14, 79, 0.1),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                FundWalltetOption(
                  textColor: const Color.fromRGBO(3, 14, 79, 0.1),
                  optionText: 'Fund with bank account',
                  option: 'Fund directly with your bank account',
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
