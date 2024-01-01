// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SignWithGoogleButton extends StatelessWidget {
  const SignWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton.icon(
        icon: Image.asset(
          "assets/ic_google.png",
          width: 24.0,
          height: 24.0,
          fit: BoxFit.fill,
        ),
        label: const Text("Sign Up with Google"),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(14.0),
          foregroundColor: Colors.black,
          side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
