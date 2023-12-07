import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: light,
      child: Center(
        child: CustomText(
          text: "Drivers Page",
          size: 25,
          weight: FontWeight.bold,
          color: active,
        ),
      ),
    );
  }
}
