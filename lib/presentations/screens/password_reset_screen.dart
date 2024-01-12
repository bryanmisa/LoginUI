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
              Align(
                alignment: Alignment.center,
                child: Header(
                    title: 'Set new Password',
                    subTitle: 'Enter your new Password'),
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFieldWidget(
                textEditingController: _newPasswordController,
                labelText: '123456',
                isPassword: true,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldWidget(
                textEditingController: _confirmPasswordController,
                labelText: '12345',
                isPassword: true,
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
