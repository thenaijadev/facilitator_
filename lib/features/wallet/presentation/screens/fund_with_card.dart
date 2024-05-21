import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class FundWithCardScreen extends StatefulWidget {
  const FundWithCardScreen({super.key});

  @override
  State<FundWithCardScreen> createState() => _FundWithCardScreenState();
}

class _FundWithCardScreenState extends State<FundWithCardScreen> {
  late GlobalKey<FormFieldState> amountKey;
  bool amountIsValid = false;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Fund With Card',
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
                        final amountState = Validator.validateEmail(
                            amountKey.currentState?.value);
                        return amountState;
                      },
                      enabledBorderRadius: 5,
                      hintColor: const Color.fromARGB(120, 58, 58, 58),
                      hintSize: 18,
                      hintText: "Amount",
                      onChanged: (val) {
                        setState(() {
                          amountIsValid = amountKey.currentState!.validate();
                        });
                      },
                      textFieldkey: amountKey,
                    ),
                    const SizedBox(height: 20),
                    const TextWidget(
                      text: 'Add 100.00-9,999.00',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                const SizedBox(height: 600),
                PrimaryButton(
                  label: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.cardDetails);
                  },
                  isEnabled: true,
                  backgroundColor: AppColors.inputGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
