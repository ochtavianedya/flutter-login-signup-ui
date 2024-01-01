// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FormInputText extends StatelessWidget {
  const FormInputText({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  final IconData prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.0,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            size: 24.0,
            color: Colors.grey,
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
