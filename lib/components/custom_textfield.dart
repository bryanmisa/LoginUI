import 'package:login_ui/constants/commons.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final bool isPassword;
  final bool hasInfo;

  const CustomTextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.labelText,
    required this.isPassword,
    required this.hasInfo,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool isPasswordVisible = true;

  void _showPasswordModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const PasswordModalBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // SuffixIcon Widget to determine if the textfield will have hide password,
    // and modal info
    Widget? SuffixIconWidget() {
      if (widget.isPassword && widget.hasInfo) {
        return PasswordInfoSuffixIcon(
          onPasswordToggle: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          iconVisibility: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onInfoTap: () {
            _showPasswordModalBottomSheet();
          },
        );
      } else if (widget.isPassword == true && widget.hasInfo == false) {
        return PasswordInfoSuffixIcon(
          iconVisibility: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPasswordToggle: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        );
      }
      return null;
    }

    return TextFormField(
      controller: widget.textEditingController,
      obscureText: widget.isPassword && isPasswordVisible,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        hintText: widget.labelText,
        //labelText: widget.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade500,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade500,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SuffixIconWidget(),
        ),
      ),
    );
  }
}
