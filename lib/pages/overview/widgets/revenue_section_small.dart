import 'package:dashboard/constants/style.dart';
import 'package:dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(offset: const Offset(0, 6), color: lightGrey.withOpacity(0.1), blurRadius: 12)
        ],
        border: Border.all(color: lightGrey, width: 0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: "Revenue Chart",
            size: 20,
            weight: FontWeight.bold,
            color: lightGrey,
          ),
          Container(
            width: 600,
            height: 200,
            child: SimpleBarChart.withSampleData(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Container(width: 200, height: 1, color: lightGrey),
          ),
          Row(
            children: [
              RevenueInfo(title: "Today's revenue", amount: "23"),
              RevenueInfo(title: "Last 7 days", amount: "150"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              RevenueInfo(title: "Last 230 days", amount: "1.203"),
              RevenueInfo(title: "Last 12 months", amount: "3.250"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
