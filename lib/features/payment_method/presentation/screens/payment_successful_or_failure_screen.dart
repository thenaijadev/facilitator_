import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PaymentFailureOrSuccessScreen extends StatefulWidget {
  const PaymentFailureOrSuccessScreen({super.key});

  @override
  State<PaymentFailureOrSuccessScreen> createState() =>
      _PaymentFailureOrSuccessScreenState();
}

class _PaymentFailureOrSuccessScreenState
    extends State<PaymentFailureOrSuccessScreen> {
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Fund With Card",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0).copyWith(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSuccessful = !isSuccessful;
                    });
                  },
                  child: Image.asset(
                    isSuccessful
                        ? "assets/images/success.png"
                        : "assets/images/alert-triangle.png",
                    width: 100,
                  )),
              TextWidget(
                text: isSuccessful ? "Successful" : "Error",
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                text: isSuccessful
                    ? "Use the order ID to track your order.Order ID: #54554"
                    : "Something went wrong, kindly try again!",
                fontSize: 21,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500,
              ),
              const Spacer(),
              PrimaryButton(
                  label: "Go to Transaction Details",
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.myWallet);
                  },
                  isEnabled: true)
            ],
          ),
        ),
      ),
    );
  }
}
