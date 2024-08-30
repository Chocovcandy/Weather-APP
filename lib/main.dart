import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/pages/home_page.dart';
import 'package:weather_app_tutorial/pages/sign_in.dart';
import 'package:weather_app_tutorial/pages/sign_up.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(),
      routes : {
        '/intropage' : (context) => const  IntroPage(),
        '/signinpage' : (context) =>   SignInPage(),
        '/homepage' : (context) => const HomePage(),
        '/signuppage' : (context) =>  SignUpPage(),
      }
    );
  }
}