import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/components/myTextfield.dart';
import 'package:weather_app_tutorial/components/myTextfield_password.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 140),

            //* Sign In Text
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(255, 39, 86, 168),
                fontFamily: 'Arial',
              ),
            ),

            const SizedBox(height: 60),

            //* TEXTFIELD OF USERNAME
            MyTextfield(
              controller: username,
              hintText: "Username",
              obscureText: false,
            ),

            const SizedBox(height: 25),

            //* TEXTFIELD OF USER PASSWORDS
            MyTextfieldPassword(
              controller: password,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 4),

            //* FORGOT PASSWORD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color.fromARGB(255, 39, 37, 37),
                      fontFamily: 'Arial'
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            //* SIGN IN BUTTON
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context,
                      '/homepage'); 
                },
                style: TextButton.styleFrom(
                  backgroundColor: const  Color.fromARGB(255, 39, 86, 168),
                  padding: const EdgeInsets.only(left : 0, right: 0, top : 20, bottom : 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 35),


            const SizedBox(height: 40),

            //* NOT HAVE AN ACCOUNT? REGISTER NOW
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Not have an account?",
                  style: TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Arial'),
                ),
                const SizedBox(width: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            '/signuppage'); // Ensure this matches your route name
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 86, 168),
                          fontFamily: 'Arial',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
