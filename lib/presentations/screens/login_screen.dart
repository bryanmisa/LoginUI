import 'package:login_ui/constants/commons.dart';

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
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Header(
                title: 'Login to your account',
                subTitle: 'Welcome Back! Please enter your details.',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomText(text: 'Email', fontSize: 15),
            const SizedBox(
              height: 15,
            ),
            CustomTextFieldWidget(
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
            CustomTextFieldWidget(
              textEditingController: _passwordController,
              labelText: 'Password',
              isPassword: true,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextButton(
                text: 'Forgot password',
                onPressed: () => _onForgotPasswordPressed(context)),
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
      ),
    );
  }
}
