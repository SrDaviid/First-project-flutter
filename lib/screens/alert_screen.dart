import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("Title"),
            content: Column(
              //This widget adjust the alert text
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is the content of the alert!"),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 90,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  //Alert pop
  void displayDialogAndroid(BuildContext context) {
    showDialog(
        //this property allows me to click out of the alert and close it
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text("Title"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              //This widget adjust the alert text
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is the content of the alert!"),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 90,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.red,
              //     shape: const StadiumBorder(),
              //     elevation: 0),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Mostrar alerta",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              //Aqui determina automaticamente detecta el sistema operativo y despliegue alerta segun el sistema
              //IMPORTANT FACT
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
