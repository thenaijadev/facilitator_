import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/action_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: 'Payment With Wallet',
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const WalletCard(
                    cardNumber: '...6454',
                    amount: '0.00',
                    name: 'Sanni Kayinsola',
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      WalletAction(
                        image: 'assets/images/fund_blue.png',
                        action: 'Fund',
                        onTap: () {
                          Navigator.pushNamed(context, Routes.fundWallet);
                        },
                        color: AppColors.primary,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      WalletAction(
                        image: 'assets/images/send_blue.png',
                        action: 'Send',
                        onTap: () {
                          Navigator.pushNamed(context, Routes.sendMoneyToBank);
                        },
                        color: AppColors.primary,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      WalletAction(
                        image: 'assets/images/withdraw_blue.png',
                        action: 'Withdraw',
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.withdrawFromWallet);
                        },
                        color: AppColors.primary,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      WalletAction(
                        image: 'assets/images/request_blue.png',
                        action: 'Request',
                        onTap: () {
                          Navigator.pushNamed(context, Routes.requestMoney);
                        },
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 76.67),
                  Column(
                    children: [
                      Image.asset('assets/images/empty.png'),
                      const SizedBox(height: 20),
                      const TextWidget(
                        text: 'You have no funds',
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ],
              ),
              PrimaryButton(
                label: 'Proceed to Fund your Wallet',
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
