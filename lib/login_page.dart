import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/signuppage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final gradient =
      const LinearGradient(colors: [Color(0xffEEA026), Color(0xffE93A27)]);

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BRAND",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "Clouders"),
                  ),
                  ShaderMask(
                      shaderCallback: (bounds) {
                        return gradient.createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                      },
                      child: Text(
                        "KILN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "Clouders"),
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white38),
                    labelStyle: TextStyle(color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  }
                  return null;
                },
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: _toggleVisibility,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white12,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white38),
                    labelStyle: TextStyle(color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                obscureText: _obscureText,
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    "Log",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: "Clouders"),
                  ),
                  ShaderMask(
                      shaderCallback: (bounds) {
                        return gradient.createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                      },
                      child: Text(
                        " in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: "Clouders"),
                      )),
                  SizedBox(
                    width: 118,
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      String? storedEmail = prefs.getString('email');
                      String? storedPassword = prefs.getString('password');
      
                      if (emailController.text == storedEmail &&
                          passwordController.text == storedPassword) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Invalid user email or password')));
                      }
                    },
                    icon: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
