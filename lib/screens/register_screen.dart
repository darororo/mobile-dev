import 'package:flutter/material.dart';
import 'package:tp2/checkbox/mycheckbox.dart';
import '../textfield/filled_textfield.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: const Text(
                    "Register new \naccount",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
                  ),
                ),
                Image.asset('assets/images/accent.png', width: 100),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Column(
                spacing: 20,
                children: [
                  FilledTextfield(hintText: 'Email'),
                  FilledTextfield(hintText: 'Password', showHideIcon: true),
                  FilledTextfield(
                    hintText: 'Password Confirmation',
                    showHideIcon: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                children: [
                  MyCheckbox(),
                  Expanded(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        text: "By creating an account, you agree to our ",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Lato",
                    fontSize: 16,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
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
