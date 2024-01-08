import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/components/custom_elevatedbutton.dart';
import 'package:login_ui/components/custom_text.dart';
import 'package:login_ui/components/custom_textfield.dart';
import 'package:login_ui/constants/constants.dart';
import 'package:login_ui/presentations/screens/login_screen.dart';
import 'package:login_ui/presentations/screens/password_reset_link.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _emailController.dispose();
    super.dispose();
  }

  void _backToLogin(BuildContext context) {
    // Navigate to back to login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _passwordLinkSent(BuildContext context) {
    // Navigate to password link sent page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PasswordResetLink(),
      ),
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
                        text: 'Password Recovery',
                        fontSize: 30,
                        fontWeight: CustomFontWeight.bold,
                        color: Colors.black87,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomText(
                          text:
                              "Enter the email you're using for the your account",
                          fontSize: 15),
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
                      SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          text: 'Send Password Reset Link',
                          onPressed: () => _passwordLinkSent(context),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () => _backToLogin(context),
                    child: const Text(
                      'Back to Login',
                      style: TextStyle(
                          color: Color(0xFF013665),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
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
