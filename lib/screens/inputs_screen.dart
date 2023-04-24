import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'David',
      'second_name': 'Frias',
      'email': 'david@hotmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs and forms'),
      ),
      //Widget que nos permite hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              const CustomInputField(
                labelText: 'Name',
                hintText: 'Username',
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              const CustomInputField(
                labelText: 'Last Name',
                hintText: 'Subname',
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              const CustomInputField(
                labelText: 'User mail',
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              const CustomInputField(
                labelText: 'Password',
                hintText: 'User password',
                obscureText: true,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Form not valid');
                      return;
                    }
                    //* Imprimir valores del formulario
                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
