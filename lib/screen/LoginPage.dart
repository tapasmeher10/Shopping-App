import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/screen/constants.dart';
import 'package:saree_center/screen/custom_btn.dart';
import 'package:saree_center/screen/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Welcome User,\n Login to your account",
              textAlign: TextAlign.center,
              style: Constants.BoldHeading,
            ),
            Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 40, color: Colors.amber[700]),
                      )),
                      SizedBox(height: 40),
                      TextField(
                        // obscureText: obscureText,
                        decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            prefixIcon: Icon(Icons.alternate_email),
                            hintStyle: TextStyle(color: Colors.black87),
                            fillColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.amberAccent))),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            prefixIcon: Icon(Icons.password),
                            hintStyle: TextStyle(color: Colors.black87),
                            fillColor: Colors.black,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.amberAccent))),
                      ),
                      Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 15, color: Colors.black87),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                          color: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.amber)),
                          textColor: Colors.black,
                          child: new Text("Login"),
                          onPressed: () {}),
                    ])),
            CustomBtn(
              text: "Create New Account",
              outlineBtn: false,
            )
          ],
        ),
      ),
    ));
  }
}
