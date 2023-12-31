import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getDefaultTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Color(0xff007dfe),
    ),
  );
}
