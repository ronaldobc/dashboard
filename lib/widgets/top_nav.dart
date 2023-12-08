import 'package:dashboard/constants/style.dart';
import 'package:dashboard/helpers/responsive_widget.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: ResponsiveWidget.isSmallScreen(context)
        ? IconButton(
            onPressed: () => key.currentState!.openDrawer(),
            icon: const Icon(Icons.menu),
          )
        : Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              ),
            ],
          ),
    elevation: 0,
    title: Row(children: [
      Visibility(
        child: CustomText(
          text: "Dash",
          color: lightGrey,
          size: 20,
          weight: FontWeight.bold,
        ),
      ),
      Expanded(
        child: Container(),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.settings,
          color: dark.withOpacity(0.7),
        ),
      ),
      Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: dark.withOpacity(0.7),
            ),
          ),
          Positioned(
            top: 7,
            right: 7,
            child: Container(
              width: 12,
              height: 12,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: active,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: light,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
      Container(
        width: 1,
        height: 12,
        color: lightGrey,
      ),
      const SizedBox(
        width: 24,
      ),
      CustomText(
        text: "Ronaldo Baragati Cassini",
        color: lightGrey,
      ),
      const SizedBox(
        width: 16,
      ),
      Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: light,
            child: Icon(Icons.person_outline, color: dark),
          ),
        ),
      )
    ]),
    iconTheme: IconThemeData(color: dark),
  );
}
