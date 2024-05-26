import 'package:facilitator/core/utils/size_config.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InternalTotalReachScreen extends StatefulWidget {
  const InternalTotalReachScreen({super.key});

  @override
  State<InternalTotalReachScreen> createState() =>
      _InternalTotalReachScreenState();
}

class _InternalTotalReachScreenState extends State<InternalTotalReachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Internal Total Reach",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: SizeConfig.getProportionateScreenHeight(
                context: context,
                inputHeight: 202,
              ),
              width: SizeConfig.getProportionateScreenWidth(
                context: context,
                inputWidth: 390,
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(3, 14, 79, 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'My Promotion Plan',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: 'Duration',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          TextWidget(
                            text: '1-month plan',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: 'Price',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          TextWidget(
                            text: 'NGN 2000',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: 'Date',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          TextWidget(
                            text: 'November 21, 2022',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
