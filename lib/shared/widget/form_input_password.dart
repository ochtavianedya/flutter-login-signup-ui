// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FormInputPassword extends StatelessWidget {
  const FormInputPassword({
    Key? key,
    required this.prefixIcon,
    required this.iconButton,
    required this.hintText,
    required this.onPressed,
    this.obscureText,
  }) : super(key: key);

  final obscureText;
  final IconData prefixIcon;
  final IconData iconButton;
  final String hintText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.0,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            size: 24.0,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              iconButton,
              size: 24.0,
              color: Colors.grey,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
