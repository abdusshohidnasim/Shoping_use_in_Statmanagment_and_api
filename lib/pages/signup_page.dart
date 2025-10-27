

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Stat_manageMent/Provider/SiginupProvider.dart';
import '../Wized/TextfromFild.dart';
import '../Wized/bigbutton.dart';
import '../Wized/bugbutton_buttom_Text.dart';
import '../Wized/login_and_signup_background.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top background
            LoginTopBackgrount(
              text: "Sign Up",
              subtext: "Enter your credentials to continue",
              context: context,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFromFilt(
                      labelText: "Username",
                      controller: nameController,
                      validator: (value) =>
                      value!.isEmpty ? "Username requerd" : null,
                    ),
                    const SizedBox(height: 15),
                    TextFromFilt(
                      labelText: "Email",
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email required";
                        }
                        if (!value.contains("@")) {
                          return "pleace creacet Email";
                        }
                        return null;
                      },
                      icon: const Icon(Icons.check, color: Colors.green),
                    ),
                    const SizedBox(height: 15),
                    TextFromFilt(
                      labelText: "Password",
                      controller: passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password required";
                        }
                        if (value.length < 6) {
                          return "men 6 later use";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),

                    // Terms and Privacy
                    ButtonButtomText(
                      fristext: "By continuing you agree to our ",
                      secendtext: "Terms of Service",
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    ButtonButtomText(
                      fristext: "and",
                      secendtext: " Privacy Policy",
                      mainAxisAlignment: MainAxisAlignment.start,
                    ),
                    const SizedBox(height: 20),

                    // Signup button
                    Consumer<SignupProvider>(
                      builder: (context, provider, child) {
                        return provider.isLoading
                            ? const CircularProgressIndicator()
                            : BigButton(
                          text: "Sign Up",
                          onTab: () async {
                            if (_formKey.currentState!.validate()) {
                              await provider.SignupFuntion(
                                name: nameController.text.trim(),
                                email: emailController.text.trim(),
                                password:
                                passwordController.text.trim(),
                              );
                            }
                           // Navigator.pushNamed(context, "/Loginpage");
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 20),

                    // Login link
                    ButtonButtomText(
                      fristext: "Already have an account? ",
                      secendtext: "Login",
                      onTab: () {
                        Navigator.pushNamed(context, "/Loginpage");
                      },
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
