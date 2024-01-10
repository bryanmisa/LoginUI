import 'package:login_ui/constants/commons.dart';

class PasswordResetLink extends StatelessWidget {
  const PasswordResetLink({super.key});

  void _backToLogin(BuildContext context) {
    // Navigate to back to login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
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
                text:
                    'Click on the link sent to your email to reset your password',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
