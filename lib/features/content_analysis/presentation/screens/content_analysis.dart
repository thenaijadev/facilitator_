import 'package:facilitator/core/constants/app_colors.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/content_analysis/presentation/widgets/chart_container.dart';
import 'package:facilitator/features/content_analysis/presentation/widgets/history_card.dart';
import 'package:flutter/material.dart';

class ContentAnalysis extends StatelessWidget {
  const ContentAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: 'Content Analytics',
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChartContainer(selectedDate: DateTime.now(), label: "Sales"),
                  const SizedBox(height: 20),
                  const TextWidget(
                    text: 'Earning History',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 15),
                  HistoryCard(
                    image: 'party_jollof.png',
                    title: 'How to cook party Jollof',
                    subtitle: '5 month ago',
                    graph: 'assets/images/graph.png',
                    amount: 'NGN 6,000',
                    onTap: () {},
                  ),
                  const SizedBox(height: 15),
                  HistoryCard(
                    image: 'party_jollof.png',
                    title: 'How to cook party Jollof',
                    subtitle: '5 month ago',
                    graph: 'assets/images/graph.png',
                    amount: 'NGN 6,000',
                    onTap: () {},
                  ),
                  const SizedBox(height: 15),
                  HistoryCard(
                    image: 'party_jollof.png',
                    title: 'How to cook party Jollof',
                    subtitle: '5 month ago',
                    graph: 'assets/images/graph.png',
                    amount: 'NGN 6,000',
                    onTap: () {},
                  ),
                  const SizedBox(height: 15),
                  HistoryCard(
                    image: 'party_jollof.png',
                    title: 'How to cook party Jollof',
                    subtitle: '5 month ago',
                    graph: 'assets/images/graph.png',
                    amount: 'NGN 6,000',
                    onTap: () {},
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
