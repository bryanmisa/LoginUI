import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/components/custom_text.dart';
import 'package:login_ui/components/custom_textfield.dart';
import 'package:login_ui/constants/constants.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: SvgPicture.asset(
                        LoginUIConstants.logoImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const CustomText(
                      text: 'Login to your account',
                      fontSize: 30,
                      fontWeight: CustomFontWeight.bold,
                      color: Colors.black87,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CustomText(
                        text: 'Welcome Back! Please enter your details.',
                        fontSize: 18),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Email'),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      textEditingController: _emailController,
                      labelText: 'Enter your email',
                      isPassword: false,
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
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15), // Set padding here
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Sign In'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
