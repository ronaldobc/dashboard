import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: light,
      child: Center(
        child: CustomText(
          text: "Overview Page",
          size: 25,
          weight: FontWeight.bold,
          color: active,
        ),
      ),
    );
  }
}
