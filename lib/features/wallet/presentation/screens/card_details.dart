import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:facilitator/features/wallet/presentation/widgets/amount.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  late GlobalKey<FormFieldState> holderNameKey;
  late GlobalKey<FormFieldState> cardNumberKey;
  late GlobalKey<FormFieldState> cvvKey;
  late GlobalKey<FormFieldState> expirationDateKey;

  bool holderNameIsValid = false;
  bool cardNumberIsValid = false;
  bool cvvIsValid = false;
  bool expirationDateIsValid = false;

  @override
  void initState() {
    holderNameKey = GlobalKey<FormFieldState>();
    cardNumberKey = GlobalKey<FormFieldState>();
    cvvKey = GlobalKey<FormFieldState>();
    expirationDateKey = GlobalKey<FormFieldState>();

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
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Amount(amount: 'NGN 15,000'),
                const SizedBox(height: 100),
                InputFieldWidget(
                  validator: (p0) {
                    final emailState = Validator.validateEmail(
                        holderNameKey.currentState?.value);
                    return emailState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "Credit Holder Name",
                  onChanged: (val) {
                    setState(() {
                      holderNameIsValid =
                          holderNameKey.currentState!.validate();
                    });
                  },
                  textFieldkey: holderNameKey,
                ),
                const SizedBox(height: 20),
                InputFieldWidget(
                  validator: (p0) {
                    final cardNumberState = Validator.validateEmail(
                        holderNameKey.currentState?.value);
                    return cardNumberState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "Credit Card Number",
                  onChanged: (val) {
                    setState(() {
                      cardNumberIsValid =
                          cardNumberKey.currentState!.validate();
                    });
                  },
                  textFieldkey: cardNumberKey,
                ),
                const SizedBox(height: 20),
                InputFieldWidget(
                  validator: (p0) {
                    final cvvState = Validator.validateEmail(
                        holderNameKey.currentState?.value);
                    return cvvState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "CVV",
                  onChanged: (val) {
                    setState(() {
                      cvvIsValid = cvvKey.currentState!.validate();
                    });
                  },
                  textFieldkey: cvvKey,
                ),
                const SizedBox(height: 20),
                InputFieldWidget(
                  validator: (p0) {
                    final expirationDateState = Validator.validateEmail(
                        expirationDateKey.currentState?.value);
                    return expirationDateState;
                  },
                  enabledBorderRadius: 5,
                  hintColor: const Color.fromARGB(120, 58, 58, 58),
                  hintSize: 18,
                  hintText: "Expiration Date",
                  onChanged: (val) {
                    setState(() {
                      expirationDateIsValid =
                          expirationDateKey.currentState!.validate();
                    });
                  },
                  textFieldkey: expirationDateKey,
                ),
                const SizedBox(height: 20),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(0),
                  title: const TextWidget(
                    text: 'Remember  my card',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  value: true,
                  onChanged: (val) {},
                ),
                const SizedBox(height: 218),
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
