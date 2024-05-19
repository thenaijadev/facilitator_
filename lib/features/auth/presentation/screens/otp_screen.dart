import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../../app/widgets/primary_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp = '';

  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 30);

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();

    setState(() {
      myDuration = const Duration(seconds: 30);
      canResendCode = false;
    });
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        canResendCode = true;
        stopTimer();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();

    super.initState();
  }

  @override
  void dispose() {
    countdownTimer?.cancel();
    super.dispose();
  }

  bool canResendCode = false;
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');

    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    final ColorScheme scheme = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assets/images/otp.png",
                    width: MediaQuery.of(context).size.width * .8,
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  TextWidget(
                    text: "Enter the OTP cossde sent to your mobile number",
                    fontSize: 21,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    color: scheme.primary,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: OTPTextField(
                        spaceBetween: MediaQuery.of(context).size.width * .05,
                        otpFieldStyle: OtpFieldStyle(
                          borderColor: const Color(0xff030E4F),
                          enabledBorderColor: const Color(0xff030E4F),
                          focusBorderColor: const Color(0xff030E4F),
                        ),
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 50,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        fieldStyle: FieldStyle.box,
                        onChanged: (val) {
                          otp = val;
                          debugPrint(val);
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextWidget(
                    text: "Did'nt recieve code?",
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(187, 3, 14, 70),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Resend Code",
                        fontSize: 18,
                        onTap: () {
                          if (canResendCode) {
                            resetTimer();
                            startTimer();
                          }
                        },
                        color: const Color(0xff030E4F),
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextWidget(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        text: "${seconds}s",
                        color: const Color(0xff030E4F),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                      label: "Verify",
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.resetPassword);
                      },
                      isEnabled: otp.length == 4),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
