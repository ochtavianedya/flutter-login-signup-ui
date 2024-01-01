import 'package:flutter/material.dart';
import 'package:login_signup_ui/core.dart';
import 'package:login_signup_ui/shared/widget/custom_button.dart';
import 'package:login_signup_ui/shared/widget/form_input_password.dart';
import 'package:login_signup_ui/shared/widget/form_input_text.dart';
import 'package:login_signup_ui/shared/widget/illustration_image.dart';
import 'package:login_signup_ui/shared/widget/sign_with_google_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IllustrationImage(
                  image: "assets/login.png",
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Let\'s login for explore continues',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                // form input
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
                  height: 8.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  label: 'Login',
                  onPressed: () {},
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
                      'Don\'t have an account?',
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign up',
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
  State<LoginView> createState() => LoginController();
}
