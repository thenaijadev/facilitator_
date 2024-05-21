import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/app/widgets/white_popup.dart';
import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/validator/validator.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:facilitator/features/request_money/presentation/widgets/request_prompt.dart';
import 'package:flutter/material.dart';

class AmountRequestScreen extends StatefulWidget {
  const AmountRequestScreen({super.key});

  @override
  State<AmountRequestScreen> createState() => _AmountRequestScreenState();
}

class _AmountRequestScreenState extends State<AmountRequestScreen> {
  late GlobalKey<FormFieldState> amountKey;
  late GlobalKey<FormFieldState> remarkKey;
  bool amountIsValid = false;
  bool remarkIsValid = false;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();
    remarkKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Request Money",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.getProportionateScreenWidth(
                    context: context,
                    inputWidth: 100,
                  ),
                  height: SizeConfig.getProportionateScreenHeight(
                    context: context,
                    inputHeight: 100,
                  ),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(3, 14, 79, 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/User.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const TextWidget(
                  text: 'Abigail',
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                const TextWidget(
                  text: '+234 90379745545',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 80),
                Column(
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
                    InputFieldWidget(
                      validator: (p0) {
                        final remarkState = Validator.validateNumber(
                            int.tryParse(remarkKey.currentState!.value));
                        return remarkState;
                      },
                      enabledBorderRadius: 5,
                      hintColor: const Color.fromARGB(120, 58, 58, 58),
                      hintSize: 18,
                      hintText: "Remark",
                      onChanged: (val) {
                        setState(() {
                          remarkIsValid = remarkKey.currentState!.validate();
                        });
                      },
                      textFieldkey: remarkKey,
                    ),
                    const SizedBox(height: 20),
                    CheckboxListTile(
                      contentPadding: const EdgeInsets.all(0),
                      value: true,
                      onChanged: (val) {},
                      title: const TextWidget(
                        text: 'Save Recipient',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
            PrimaryButton(
              label: 'Request',
              onPressed: () {
                showWhitePopup(
                  context: context,
                  widget: const RequestPrompt(
                    amount: '2000',
                    recipient: '+234 90379745545',
                  ),
                );
              },
              isEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
