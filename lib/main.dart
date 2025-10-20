import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_api_statmanagment/pages/loginpage.dart';
import 'package:shoping_api_statmanagment/pages/signup_page.dart';
import 'package:shoping_api_statmanagment/pages/welcomepage.dart';
import 'package:shoping_api_statmanagment/pages/splash_Screen.dart';

import 'Stat_manageMent/Provider/splacescreen provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>SplachProvider()),
    ],
      child:  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        routes: {
          "/placeScreen": (context)=>SplashScreen(),
          "/WelcomePage": (context)=>WelcomePage(),
          "/Loginpage": (context)=>Loginpage(),
          "/SignupPage": (context)=>SignupPage(),

        },
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen(),
      ),


    );
  }
}
