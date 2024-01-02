import 'package:login_signup_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_ui/shared/theme/theme.dart';
import 'package:login_signup_ui/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginView(),
        '/signup': (context) => const SignupView(),
        '/verification-otp': (context) => const VerificationOtpView(),
      },
    );
  }
}
