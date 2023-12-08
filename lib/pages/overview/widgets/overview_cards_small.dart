import 'package:dashboard/pages/overview/widgets/info_card.dart';
import 'package:dashboard/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "4",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
