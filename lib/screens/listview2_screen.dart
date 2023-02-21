import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Listview2Screen extends StatelessWidget {
   
   final options  = const ['Megaman', 'Spider Man', 'Super Smash', 'Final Fantasy','Metal Gear'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title: const Text('Listview Type 2'),
      ),
      body: ListView.separated(
        itemCount:  options.length,
        itemBuilder: (context, index) => ListTile(
            title:Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ), 
        separatorBuilder: (context, index) => const Divider(),
      )
    );
  }
}