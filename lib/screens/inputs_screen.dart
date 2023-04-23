import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello World'),
      ),
      //Widget que nos permite hacer scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            TextFormField(
              //This property allow me to auto direct the form with the keyword
              autofocus: false,
              //This property put a initial text on the form
              initialValue: '',
              //This property allow me to start a word in uppercase
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print('value: $value');
              },
              validator: (value) {
                if (value == null) return 'This field is required';
                return value.length < 3 ? 'The minimun is 3' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: 'Username',
                  labelText: 'Name',
                  helperText: 'Only text',
                  // counterText: '3 words left'
                  suffixIcon: Icon(
                    Icons.group_outlined,
                    color: Colors.indigo,
                  ),
                  // prefixIcon: Icon(
                  //   Icons.verified_user_sharp,
                  // ),
                  icon: Icon(Icons.assignment_ind_outlined)),
            )
          ]),
        ),
      ),
    );
  }
}
