import 'package:flutter/material.dart';
import 'package:shoping_api_statmanagment/Wized/bigbutton.dart';
import 'package:shoping_api_statmanagment/Wized/bugbutton_buttom_Text.dart';

import '../Wized/TextfromFild.dart';
import '../Wized/login_and_signup_background.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginTopBackgrount(
              text: "Sign Up",
              subtext: "Enter your credentials to continue",
              context: context,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                TextFromFilt(LabelText: 'Username'),
                SizedBox(height: 10),
        
                TextFromFilt(
                  LabelText: 'Email',
                  Icon: Icon(Icons.check, color: Colors.green),
                ),
                SizedBox(height: 10),
                TextFromFilt(LabelText: 'Password', Icon: Icon(Icons.visibility_off)),
                SizedBox(height: 10),
                ButtonButtomText(
                  fristext: "By continuing you agree to our ",
                  secendtext: "Terms of Service", mainAxisAlignment: MainAxisAlignment.start,
                ),
                ButtonButtomText(fristext: "and", secendtext: " Privacy Policy",mainAxisAlignment: MainAxisAlignment.start,),
                SizedBox(height: 20,),
                BigButton(text: "Sign Up",onTab: (){}),
                SizedBox(height: 20),
                ButtonButtomText(fristext: "Already have an account? ", secendtext: "Singup", mainAxisAlignment: MainAxisAlignment.center)
              ],),
            )
        
          ],
        ),
      ),
    );
  }
}
