import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: light,
        child: Center(
          child: CustomText(
            text: "Authentication Page",
            size: 25,
            weight: FontWeight.bold,
            color: active,
          ),
        ),
      ),
    );
  }
}
