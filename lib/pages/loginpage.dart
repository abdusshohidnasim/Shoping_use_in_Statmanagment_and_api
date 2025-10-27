import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Stat_manageMent/Provider/LoginProvider.dart';
import '../Wized/TextfromFild.dart';
import '../Wized/bigbutton.dart';
import '../Wized/bugbutton_buttom_Text.dart';
import '../Wized/google_button.dart';
import '../Wized/login_and_signup_background.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFromFilt(
                      labelText: "Email",
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email required";
                        }
                        if (!value.contains("@")) {
                          return "please creacete Email ";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFromFilt(
                      labelText: "Password",
                      controller: passwordController,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password required";
                        }
                        if (value.length < 6) {
                          return "menmum 6 later use";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    Consumer<LoginProvider>(
                      builder: (context, provider, child) {
                        return provider.isLoading
                            ? const CircularProgressIndicator()
                            : BigButton(
                          text: "Log In",
                          onTab: () async {
                            if (_formKey.currentState!.validate()) {
                              await provider.login(
                                email: emailController.text.trim(),
                                password:
                                passwordController.text.trim(),
                              );
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    GoogleButton(
                      text: "Continue with Google",
                      onTab: () {
                        // Google login logic
                      },
                    ),
                    const SizedBox(height: 10),
                    ButtonButtomText(
                      fristext: "Don’t have an account?",
                      secendtext: " Signup",
                      onTab: () {
                        Navigator.pushNamed(context, "/SignupPage");
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

























//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../Stat_manageMent/Provider/LoginProvider.dart';
// import '../Wized/TextfromFild.dart';
//
//
//
//
// class Loginpage extends StatelessWidget {
//    Loginpage({super.key});
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     double Height = MediaQuery.of(context).size.height;
//     double Width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             LoginTopBackgrount(
//               text: "Login",
//               context: context,
//               subtext: "Enter your emails and password",
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   TextFromFilt(LabelText: 'Email'),
//                   SizedBox(height: 20),
//                   TextFromFilt(
//                     onTab: (){},
//                     LabelText: "Password",
//                     Icon: Icon(Icons.visibility_off),
//                   ),
//                   SizedBox(height: 20),
//                   BigButton(text: "Log In"),
//                   SizedBox(height: 20),
//                   GoogleButton(text: "Continue with Google"),
//                   SizedBox(height: 10),
//                   ButtonButtomText(
//                     fristext: "Don’t have an account?",
//                     secendtext: " Singup",
//                     onTab: () {
//                       Navigator.pushNamed(context, "/SignupPage");
//                     },
//                     mainAxisAlignment: MainAxisAlignment.center,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //
// //
// // class LoginPage extends StatelessWidget {
// //   LoginPage({super.key});
// //
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final _formKey = GlobalKey<FormState>();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(20),
// //           child: Form(
// //             key: _formKey,
// //             child: Column(
// //               children: [
// //
// //                 const Text("Login", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
// //                 const SizedBox(height: 20),
// //                 TextFromFilt(
// //                   labelText: "Email",
// //                   controller: emailController,
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) return "Email দিতে হবে";
// //                     if (!value.contains("@")) return "সঠিক Email দিন";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 TextFromFilt(
// //                   labelText: "Password",
// //                   controller: passwordController,
// //                   isPassword: true,
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) return "Password দিতে হবে";
// //                     if (value.length < 6) return "কমপক্ষে ৬ অক্ষরের হতে হবে";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 Consumer<LoginProvider>(
// //                   builder: (context, provider, child) {
// //                     return provider.isLoading
// //                         ? const CircularProgressIndicator()
// //                         : ElevatedButton(
// //                       onPressed: () async {
// //                         if (_formKey.currentState!.validate()) {
// //                           await provider.login(
// //                             email: emailController.text.trim(),
// //                             password: passwordController.text.trim(),
// //                           );
// //                         }
// //                       },
// //                       child: const Text("Log In"),
// //                     );
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 TextButton(
// //                   onPressed: () => Navigator.pushNamed(context, "/SignupPage"),
// //                   child: const Text("Don’t have an account? Signup"),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
