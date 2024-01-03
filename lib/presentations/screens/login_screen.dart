import 'package:flutter/material.dart';
import 'package:login_ui/components/text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void dispose() {
    // Dispose of the controller when the widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              const SizedBox(
                height: 15,
              ),
              const Text('Welcome Back! Please enter your details.'),
              const SizedBox(
                height: 15,
              ),
              const Text('Email'),
              const SizedBox(
                height: 15,
              ),
              // TextField(
              //   decoration: InputDecoration(
              //     contentPadding: EdgeInsets.all(10),
              //     labelText: 'Email',
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10.0),
              //       borderSide: BorderSide(
              //         width: 1,
              //         color: Colors.grey.shade500,
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10.0),
              //       borderSide: BorderSide(
              //         width: 1,
              //         color: Colors.grey.shade500,
              //       ),
              //     ),
              //   ),
              // ),
              TextFieldWidget(
                textEditingController: _emailController,
                labelText: 'Email',
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Password'),
              const SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                textEditingController: _passwordController,
                labelText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Forgot Password'),
            ],
          ),
        ),
      ),
    );
  }
}
