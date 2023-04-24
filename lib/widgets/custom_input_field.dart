
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //This property allow me to auto direct the form with the keyword
      autofocus: false,
      //This property put a initial text on the form
      initialValue: '',
      //This property allow me to start a word in uppercase
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value == null) return 'This field is required';
        return value.length < 3 ? 'The minimun is 3' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // counterText: '3 words left'
          suffixIcon: suffixIcon == null
              ? null
              : const Icon(
                  Icons.group_outlined,
                ),
          icon: icon == null ? null : Icon(icon)),
    );
  }
}
