import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de flutter"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoutes.menuOptions[index].name),
                leading: Icon(AppRoutes.menuOptions[index].icon,
                    //Icon Color
                    color: AppTheme.primary),
                onTap: () {
                  //Con este metodo puedes colocar la ruta directamente
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);

                  // final route = MaterialPageRoute(
                  //   builder: (context) => const Listview1Screen(),
                  // );

                  // Con este metodo puedes volver hacia atras
                  // Navigator.push(context, route);

                  // Con este metodo no puedes volver hacia atras
                  // Navigator.pushReplacement(context, route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
