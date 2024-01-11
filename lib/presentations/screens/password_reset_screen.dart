import 'package:login_ui/constants/commons.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Header(
                    title: 'Set New Password',
                    subTitle: 'Enter your New Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
