import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/constants/style.dart';
import 'package:dashboard/helpers/responsive_widget.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard/pages/overview/widgets/revenue_section_small.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverviewCardsMedium()
                else
                  const OverviewCardsLarge()
              else
                const OverviewCardsSmall(),
              if (ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionSmall()
              else
                const RevenueSectionLarge()
            ],
          ),
        ),
      ],
    );
  }
}
