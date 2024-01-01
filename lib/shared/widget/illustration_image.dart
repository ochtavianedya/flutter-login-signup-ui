// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class IllustrationImage extends StatelessWidget {
  const IllustrationImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
