import 'package:flutter/material.dart';
import 'package:login_signup_ui/core.dart';
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
                // introduction image
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/login.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                // title text
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
                SizedBox(
                  height: 58.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        MdiIcons.email,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                      hintText: 'email',
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
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  height: 58.0,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        MdiIcons.lock,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                      suffixIcon: Icon(
                        MdiIcons.eye,
                        size: 24.0,
                        color: Colors.grey,
                      ),
                      hintText: 'password',
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
                ),
                const SizedBox(
                  height: 8.0,
                ),
                // forgot password
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
                // sign in button
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                // divider
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
                // sign with google
                SizedBox(
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
                ),
                const SizedBox(
                  height: 12.0,
                ),
                // register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
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
