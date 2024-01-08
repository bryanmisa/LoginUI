import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/components/custom_elevatedbutton.dart';
import 'package:login_ui/components/custom_text.dart';
import 'package:login_ui/components/custom_textfield.dart';
import 'package:login_ui/constants/constants.dart';
import 'package:login_ui/presentations/screens/forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // forgot password function
  void _onForgotPasswordPressed(BuildContext context) {
    // Navigate to the second screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
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
                        fontSize: 30.0,
                        fontWeight: CustomFontWeight.bold,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomText(
                        text: 'Welcome Back! Please enter your details.',
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomText(text: 'Email', fontSize: 15),
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
                      const CustomText(text: 'Password', fontSize: 15),
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
                        onPressed: () => _onForgotPasswordPressed(context),
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Color(0xFF013665),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          fontSize: 20,
                          text: 'Sign in',
                          onPressed: () => print('Button is pressed'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
