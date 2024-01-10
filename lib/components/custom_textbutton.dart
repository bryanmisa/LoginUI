import 'package:login_ui/constants/commons.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xFF013665),
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
