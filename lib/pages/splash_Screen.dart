import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoping_api_statmanagment/Style/colors.dart';
import 'package:shoping_api_statmanagment/pages/welcomepage.dart';

import '../Stat_manageMent/Provider/splacescreen provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    final splashProvider = context.read<SplachProvider>();
    splashProvider.addListener(() {
      if (splashProvider.isFalse) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const WelcomePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: CustomColors.SecendaryColors,
      body: Center(
        child: Image.asset(
          "assets/images/splaceimage.png",
          height: Height / 15,
          width: Width,
        ),
      ),
    );
  }
}
