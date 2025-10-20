import 'package:flutter/material.dart';

import 'package:shoping_api_statmanagment/Wized/bigbutton.dart';
import 'package:shoping_api_statmanagment/Wized/google_button.dart';

import '../Wized/TextfromFild.dart';
import '../Wized/bugbutton_buttom_Text.dart' show ButtonButtomText;
import '../Wized/login_and_signup_background.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginTopBackgrount(
              text: "Login",
              context: context,
              subtext: "Enter your emails and password",
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFromFilt(LabelText: 'Email'),
                  SizedBox(height: 20),
                  TextFromFilt(
                    onTab: (){},
                    LabelText: "Password",
                    Icon: Icon(Icons.visibility_off),
                  ),
                  SizedBox(height: 20),
                  BigButton(text: "Log In"),
                  SizedBox(height: 20),
                  GoogleButton(text: "Continue with Google"),
                  SizedBox(height: 10),
                  ButtonButtomText(
                    fristext: "Don’t have an account?",
                    secendtext: " Singup",
                    onTab: () {
                      Navigator.pushNamed(context, "/SignupPage");
                    },
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
