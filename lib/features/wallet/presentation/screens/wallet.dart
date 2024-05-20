import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/action_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/wallet_card.dart';
import 'package:flutter/cupertino.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const WalletCard(
                  cardNumber: '...6454',
                  amount: '0.00',
                  name: 'Sanni Kayinsola',
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 390,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      WalletAction(
                        image: 'assets/images/fund.png',
                        action: 'Fund',
                        onTap: () {},
                        color: AppColors.primary,
                      ),
                      WalletAction(
                        image: 'assets/images/send.png',
                        action: 'Send',
                        onTap: () {},
                        color: AppColors.primary,
                      ),
                      WalletAction(
                        image: 'assets/images/withdraw.png',
                        action: 'Withdraw',
                        onTap: () {},
                        color: AppColors.primary,
                      ),
                      WalletAction(
                        image: 'assets/images/request.png',
                        action: 'Request',
                        onTap: () {},
                        color: AppColors.primary,
                      ),
                    ],
                  ),
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
                const SizedBox(height: 68.93),
                PrimaryButton(
                  label: 'Proceed to Fund your Wallet',
                  onPressed: () {},
                  isEnabled: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
