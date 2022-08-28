import 'package:flutter/material.dart';
import 'package:weekly_challenge_2022_flutter/models/models.dart';
import 'package:weekly_challenge_2022_flutter/screens/screens.dart';

// commit de prueba
class AppRoutes {
  static const initialRoute = 'home';

  static final screenOptions = <ScreenOption>[
    ScreenOption(
      route: 'reto0',
      name: 'Reto #0: El Famoso FizzBuzz',
      screen: const Reto0Screen(),
    ),
    ScreenOption(
      route: 'reto1',
      name: 'Reto #1: ¿Es un Anagrama?',
      screen: const Reto1Screen(),
    ),
    ScreenOption(
      route: 'reto2',
      name: 'Reto #2: La Sucesión de Fibonacci',
      screen: const Reto2Screen(),
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
