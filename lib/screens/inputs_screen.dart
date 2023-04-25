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
              CustomInputField(
                labelText: 'Name',
                hintText: 'Username',
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              CustomInputField(
                labelText: 'Last Name',
                hintText: 'Subname',
                formProperty: 'second_name',
                formValues: formValues,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              CustomInputField(
                labelText: 'User mail',
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              CustomInputField(
                labelText: 'Password',
                hintText: 'User password',
                obscureText: true,
                formValues: formValues,
                formProperty: 'password',
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                  DropdownMenuItem(value: 'Senior', child: Text('Senior')),
                  DropdownMenuItem(value: 'Mid-Developer', child: Text('Mid-Developer')),
                  DropdownMenuItem(value: 'Junior-Developer', child: Text('Junior-Developer')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              ElevatedButton(
                child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Save',
                      textAlign: TextAlign.center,
                    )),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Form not valid');
                    return;
                  }
                  //* Imprimir valores del formulario
                  print(formValues);
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
