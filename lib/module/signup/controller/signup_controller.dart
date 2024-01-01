import 'package:flutter/material.dart';
import 'package:login_signup_ui/core.dart';
import '../view/signup_view.dart';

class SignupController extends State<SignupView> {
  static late SignupController instance;
  late SignupView view;

  bool obscureText = true;

  // Toggles the password show status
  void togglePasswordStatus() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  bool obscureTextConfirm = true;

  // Toggles the confirm password show status
  void togglePasswordConfirmStatus() {
    setState(() {
      obscureTextConfirm = !obscureTextConfirm;
    });
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
