import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class WithdrawFromWallet extends StatefulWidget {
  const WithdrawFromWallet({super.key});

  @override
  State<WithdrawFromWallet> createState() => _WithdrawFromWalletState();
}

class _WithdrawFromWalletState extends State<WithdrawFromWallet> {
  late GlobalKey<FormFieldState> accountNumberKey;
  bool accountNumberIsValid = false;

  @override
  void initState() {
    accountNumberKey = GlobalKey<FormFieldState>();

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputFieldWidget(
                      validator: (p0) {
                        final accountNumberState = Validator.validateEmail(
                            accountNumberKey.currentState?.value);
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
                    const SizedBox(height: 20),
                  ],
                ),
                const SizedBox(height: 600),
                PrimaryButton(
                  label: 'Proceed',
                  onPressed: () {},
                  isEnabled: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
