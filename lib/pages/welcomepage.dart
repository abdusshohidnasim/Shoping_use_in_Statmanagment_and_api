import 'package:flutter/material.dart';
import 'package:shoping_api_statmanagment/Style/colors.dart';

import '../Wized/bigbutton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 50),
        height: Height,
        width: Width,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/naiem.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage("assets/images/gajor.png"),
              height: Height / 16,
              color: Colors.white,
            ),
           const Text(
              "Welcome \n to our Store",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
           const Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xffFCFCFCB2),
              ),
            ),
           const SizedBox(height: 10),
            BigButton(text: "Get Started", onTab: () {
              Navigator.pushNamed(context, "/Loginpage");
            }),
          ],
        ),
      ),
    );
  }
}
