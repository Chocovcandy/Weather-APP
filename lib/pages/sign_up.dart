import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/components/myTextfield.dart';
import 'package:weather_app_tutorial/components/myTextfield_password.dart';

class SignUpPage extends StatelessWidget {
  final Email_PhoneNum = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),

            //* Sign UP Text
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 39, 86, 168),
                fontFamily: 'Arial',
              ),
            ),

            const SizedBox(
              height: 60,
            ),

            // TEXTFIELD OF EMAIL ADDRESS OR PHONE NUMBER
            MyTextfield(
              controller: Email_PhoneNum,
              hintText: "Email address or phone number",
              obscureText: false,
            ),

            const SizedBox(
              height: 20,
            ),

            // TEXTFIELD OF PASSWORD
            MyTextfieldPassword(
              controller: password,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 20,
            ),

            // TEXTFIELD OF CONFIRM PASSWORD
            MyTextfieldPassword(
              controller: confirmPassword,
              hintText: "Confirm Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 4,
            ),

            // FORGOT PASSWORD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color.fromARGB(255, 39, 37, 37),
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 33,
            ),

            //* SIGN Up BUTTON
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 39, 86, 168),
                  padding: const EdgeInsets.only(
                      left: 0, right: 0, top: 20, bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Sign Up",
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

            const SizedBox(
              height: 32,
            ),

            // OR CONTINUE WITH
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Divider(
            //           thickness: 0.7,
            //           color: Color.fromARGB(255, 35, 44, 35),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 10),
            //         child: Text("or continue with",
            //             style: TextStyle(
            //               fontFamily: 'Arial',
            //             )),
            //       ),
            //       Expanded(
            //         child: Divider(
            //           thickness: 0.7,
            //           color: Color.fromARGB(255, 35, 44, 35),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 23),

            const SizedBox(
              height: 30,
            ),

            // ALREADY HAVE AN ACCOUNT ? SIGN IN
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Arial',
                  ),
                ),

                const SizedBox(width: 4),

                // TAP TO SIGN IN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signinpage');
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Color.fromARGB(255, 39, 86, 168),
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
