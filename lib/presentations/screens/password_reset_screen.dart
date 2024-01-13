import 'package:login_ui/constants/commons.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Header(
                    title: 'Set new Password',
                    subTitle: 'Enter your new Password'),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: 'New Password',
                  fontSize: 15,
                  fontWeight: CustomFontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFieldWidget(
                textEditingController: _newPasswordController,
                labelText: '12345678',
                isPassword: true,
                hasInfo: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: 'Confirm New Password',
                  fontSize: 15,
                  fontWeight: CustomFontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFieldWidget(
                textEditingController: _confirmPasswordController,
                labelText: '1234578',
                isPassword: true,
                hasInfo: true,
              ),
            ],
          ),
        ),
      ),
      title: 'Password Reset',
      hasAppbar: true,
      // hasDrawer: true,
    );
  }
}
