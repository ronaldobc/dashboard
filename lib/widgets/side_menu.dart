import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/constants/style.dart';
import 'package:dashboard/helpers/responsive_widget.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:dashboard/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                Divider(
                  color: lightGrey.withOpacity(.1),
                ),
              ],
            ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map(
                  (itemName) => SideMenuItem(
                      itemName: itemName == authenticationPageRoute ? "Log Out" : itemName,
                      onTap: () {
                        if (itemName == authenticationPageRoute) {
                          //Get.offAllNamed(authenticationPageRoute);
                          //menuController.changeActiveItemTo(overviewPageDisplayName);
                        }
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigationController.navigateTo(itemName);
                        }
                      }),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
