import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home_rounded),
    MenuOption(
      route: 'listview1',
      name: 'Listview Type 1',
      screen: const Listview1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview Type 2',
      screen: const Listview2Screen(),
      icon: Icons.list_outlined,
    ),
    MenuOption(
        route: 'alert',
        name: 'AlertScreen',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'CardScreen',
        screen: const CardScreen(),
        icon: Icons.credit_card_rounded),
    MenuOption(
        route: "avatar",
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.face),
    MenuOption(
        route: "animated",
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline),
    MenuOption(
        route: "inputs",
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_sharp),
    MenuOption(
        route: "slider",
        name: 'Slider & Checks',
        icon: Icons.check_box,
        screen: const SliderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
