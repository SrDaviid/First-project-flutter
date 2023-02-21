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
            
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 100
        ),
      );
  }
}