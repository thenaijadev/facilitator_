import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/widgets/verified.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/widgets/verifying.dart';
import 'package:flutter/material.dart';

class WithdrawFromWallet extends StatefulWidget {
  const WithdrawFromWallet({super.key});

  @override
  State<WithdrawFromWallet> createState() => _WithdrawFromWalletState();
}

class _WithdrawFromWalletState extends State<WithdrawFromWallet> {
  late GlobalKey<FormFieldState> accountNumberKey;
  late GlobalKey<FormFieldState> bankKey;
  bool accountNumberIsValid = false;
  bool bankIsValid = false;

  @override
  void initState() {
    accountNumberKey = GlobalKey<FormFieldState>();
    bankKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Withdraw Money',
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputFieldWidget(
                    validator: (p0) {
                      final accountNumberState = Validator.validateNumber(
                          int.tryParse(accountNumberKey.currentState!.value));
                      return accountNumberState;
                    },
                    enabledBorderRadius: 5,
                    hintColor: const Color.fromARGB(120, 58, 58, 58),
                    hintSize: 18,
                    hintText: "Account Number",
                    onChanged: (val) {
                      setState(() {
                        accountNumberIsValid =
                            accountNumberKey.currentState!.validate();
                      });
                    },
                    textFieldkey: accountNumberKey,
                  ),
                  InputFieldWidget(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.selectBankToWithdraw);
                    },
                    validator: (p0) {
                      final bankState = Validator.validateNumber(
                          int.tryParse(bankKey.currentState!.value));
                      return bankState;
                    },
                    enabledBorderRadius: 5,
                    hintColor: const Color.fromARGB(120, 58, 58, 58),
                    hintSize: 18,
                    hintText: "Bank",
                    onChanged: (val) {
                      setState(() {
                        bankIsValid = bankKey.currentState!.validate();
                      });
                    },
                    textFieldkey: bankKey,
                  ),
                  const SizedBox(height: 52),
                  const Verifying(),
                  const Verified(
                    name: 'Sarah Reves',
                  ),
                ],
              ),
              PrimaryButton(
                label: 'Proceed',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.amountToWithdraw);
                },
                isEnabled: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
