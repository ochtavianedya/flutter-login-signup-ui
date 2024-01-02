import 'package:flutter/material.dart';
import 'package:login_signup_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  Widget build(context, SignupController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IllustrationImage(image: "assets/signup.png"),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'create an account to get all features',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                FormInputText(
                  prefixIcon: MdiIcons.email,
                  hintText: 'email',
                ),
                const SizedBox(
                  height: 12.0,
                ),
                FormInputPassword(
                  obscureText: controller.obscureText,
                  prefixIcon: MdiIcons.lock,
                  iconButton:
                      controller.obscureText ? MdiIcons.eye : MdiIcons.eyeOff,
                  hintText: 'password',
                  onPressed: () => controller.togglePasswordStatus(),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                FormInputPassword(
                  obscureText: controller.obscureTextConfirm,
                  prefixIcon: MdiIcons.lock,
                  iconButton: controller.obscureTextConfirm
                      ? MdiIcons.eye
                      : MdiIcons.eyeOff,
                  hintText: 'confirm password',
                  onPressed: () => controller.togglePasswordConfirmStatus(),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  label: 'Sign Up',
                  onPressed: () =>
                      Navigator.pushNamed(context, '/verification-otp'),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        ),
                      ),
                    ),
                    const Text(
                      "You can Connect with",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 36,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const SignWithGoogleButton(),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have account?',
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/'),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SignupView> createState() => SignupController();
}
