import 'package:dashboard/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMedium extends StatelessWidget {
  const OverviewCardsMedium({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Packages delivered",
              value: "17",
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            InfoCard(
              title: "Cancelled delivery",
              value: "3",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Scheduled deliveries",
              value: "4",
              topColor: Colors.orange,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
