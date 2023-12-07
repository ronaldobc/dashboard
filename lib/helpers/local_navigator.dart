import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/routing/router.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
