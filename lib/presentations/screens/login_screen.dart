import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Log in to your account'),
              const Text('Welcome Back! Please enter your details.'),
              const Text('Email'),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ),
              Text('Password'),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ),
              Text('Forgot Password'),
            ],
          ),
        ),
      ),
    );
  }
}
