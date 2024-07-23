import 'package:flutter/material.dart';
import 'package:vhealth/components/my_button.dart';

import '../components/my_textfield.dart';
import 'login_page.dart';


class RegisterPage extends StatefulWidget {
  final void Function()? ontap;
  const RegisterPage({super.key, required this.ontap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                const Spacer(),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const CircleAvatar(
                  //   backgroundImage: AssetImage(
                  //     "images/Who.jpeg",
                  //   ),
                  //   radius: 100,
                  // ),
                  Icon(
                    Icons.self_improvement_sharp,
                    size: 70,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Let’s make it happen",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                      controller: emailController,
                      hintText: "Email",
                      obsecureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                      controller: confirmPasswordController,
                      hintText: "Password",
                      obsecureText: true),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                      controller: passwordController,
                      hintText: "Confirm Password",
                      obsecureText: true),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(
                            ontap: () {},
                          ),
                        ),
                        (route) => false);
                  }, text: "Sign Up"),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.ontap;
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage(ontap: widget.ontap),
                          ));
                        },
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.inversePrimary,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
                const Spacer(),
                  Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                "copyright © 2021-2023 V Health, All Rights Reserved",
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
