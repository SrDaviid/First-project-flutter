import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.access_alarm_rounded,
                      color: AppTheme.primary,
                    ),
                    title: Text("I'm a title"),
                    subtitle: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
