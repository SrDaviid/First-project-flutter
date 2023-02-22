import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de flutter"),
        centerTitle: true,
        elevation: 0,
      ),
      body:ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de ruta'),
          leading: const Icon(Icons.account_circle_outlined),
          onTap: () {
            
            final route = MaterialPageRoute(
              builder:(context) => const Listview1Screen()
              ,);

            Navigator.pushNamed(context, "listview1");

            // Con este metodo puedes volver hacia atras
            // Navigator.push(context, route);

            // Con este metodo no puedes volver hacia atras
            // Navigator.pushReplacement(context, route);

          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 100
        ),
      );
  }
}