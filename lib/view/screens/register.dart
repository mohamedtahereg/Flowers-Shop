import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/view/screens/login.dart';

import '../../constants.dart';
import '../ui_models/textfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextfieldModel(
                    textFieldTilte: "Enter Username",
                    txtType: TextInputType.emailAddress,
                    txtfieldIcon: const Icon(
                      Icons.email_outlined,
                      color: textFieldThemeColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextfieldModel(
                    textFieldTilte: "Email",
                    txtType: TextInputType.emailAddress,
                    txtfieldIcon: const Icon(
                      Icons.email_outlined,
                      color: textFieldThemeColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextfieldModel(
                    textFieldTilte: "Password",
                    txtType: TextInputType.visiblePassword,
                    obsecurebool: true,
                    txtfieldIcon: const Icon(
                      Icons.password,
                      color: textFieldThemeColor,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(btnGreen),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 16),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "have an account",
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.off(() => const Login());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
