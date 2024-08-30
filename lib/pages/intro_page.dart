// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_tutorial/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 126, 168, 243),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                ),


                SizedBox(
                  height: 35,
                ),

                //* Cloud animation
                Lottie.network(
                  "https://lottie.host/2c8f67ee-742b-4453-ac29-1d0d7716e52a/nl6soXhVKx.json",
                ),


                //* Weather App text
                Center(
                  child: Text(
                    "Weather App",
                    style: GoogleFonts.poppins(
                      /// ber dooo doo ah poppins ng h dak name ey dak tv
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                //* What's the weather like today??
                Center(
                  child: Text(
                    "What's the weather like today??",
                    style: GoogleFonts.poppins(
                      /// ber dooo doo ah poppins ng h dak name ey dak tv
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 33,
                ),

                //* Some text of intro
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Plan your day with ease and stay informed with Weather App.",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 100),

                //* Get started button to next page
                Center(
                  child: MyButton(
                    text: "Get Started",
                    onTap: () {
                      //* Go to home page
                      Navigator.pushNamed(context, '/signinpage');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
