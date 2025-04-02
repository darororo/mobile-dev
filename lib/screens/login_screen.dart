import 'package:flutter/material.dart';
import 'package:tp2/checkbox/mycheckbox.dart';
import '../textfield/filled_textfield.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    "Login to your \naccount",
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                children: [
                  MyCheckbox(),
                  Text("Remember Me", style: TextStyle(fontSize: 16)),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                spacing: 24,
                children: [
                  Text('OR'),
                  Text(
                    "Login With Google",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Lato",
                    fontSize: 16,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Register',
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
