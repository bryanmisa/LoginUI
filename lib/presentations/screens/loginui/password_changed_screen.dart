import 'package:login_ui/constants/commons.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  void _backToLogin(BuildContext context) {
    // Navigate to back to login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
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
            text: 'Password Changed',
            fontSize: 25,
            fontWeight: CustomFontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text:
                'Your password has been successfully updated please login again using your new password',
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
              text: 'Login',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
