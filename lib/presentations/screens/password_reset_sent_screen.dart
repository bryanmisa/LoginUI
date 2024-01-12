import 'package:login_ui/constants/commons.dart';
import 'package:login_ui/presentations/screens/password_reset_screen.dart';

class PasswordResetSentScreen extends StatelessWidget {
  const PasswordResetSentScreen({super.key});

  void _backToLogin(BuildContext context) {
    // Navigate to back to login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _passwordReset(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PasswordResetScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset(
              LoginUIConstants.greenTick,
              height: 100,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomText(
            text: 'Password Reset ',
            fontSize: 25,
            fontWeight: CustomFontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: 'Click on the link sent to your email to reset your password',
            fontSize: 17,
            fontWeight: CustomFontWeight.normal,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () => _backToLogin(context),
              text: 'Back to Login',
              fontSize: 20,
            ),
          ),
          CustomTextButton(
            text: 'Password Reset Screen',
            onPressed: () => _passwordReset(context),
          ),
        ],
      ),
    );
  }
}
