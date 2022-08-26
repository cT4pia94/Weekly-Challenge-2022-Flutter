import 'package:flutter/material.dart';
import 'package:reto_0/models/models.dart';
import 'package:reto_0/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final screenOptions = <ScreenOption>[
    ScreenOption(
      route: 'reto0',
      name: 'Reto 0',
      screen: const Reto0Screen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final screen in screenOptions) {
      appRoutes.addAll({screen.route: (BuildContext context) => screen.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Reto0Screen(),
    );
  }
}
