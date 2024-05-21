import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class FundWithBank extends StatefulWidget {
  const FundWithBank({super.key});

  @override
  State<FundWithBank> createState() => _FundWithCardScreenState();
}

class _FundWithCardScreenState extends State<FundWithBank> {
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
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Fund With Bank Account",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
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
                      final amountState = Validator.validateNumber(
                          int.tryParse(amountKey.currentState!.value));
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
              Opacity(
                opacity: amountIsValid ? 1 : .5,
                child: PrimaryButton(
                  label: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.bankDetails);
                  },
                  isEnabled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
