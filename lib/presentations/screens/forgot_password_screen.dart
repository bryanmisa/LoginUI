import 'package:login_ui/constants/commons.dart';

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
        builder: (context) => const PasswordResetSentScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(
                title: 'Password Recovery', subTitle: 'Enter your email'),
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: CustomText(text: 'Email', fontSize: 15),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFieldWidget(
                  textEditingController: _emailController,
                  labelText: 'Enter your email',
                  isPassword: false,
                  hasInfo: false,
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
                CustomTextButton(
                  text: 'Back to Login',
                  onPressed: () => _backToLogin(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
