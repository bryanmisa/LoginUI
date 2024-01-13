import 'package:login_ui/constants/commons.dart';

class PasswordInfoSuffixIcon extends StatelessWidget {
  final Icon? iconVisibility;
  final Function onPasswordToggle;
  // making the info suffix optional
  final Function? onInfoTap;

  const PasswordInfoSuffixIcon({
    super.key,
    required this.onPasswordToggle,
    this.onInfoTap,
    this.iconVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            // Toggle password visibility logic
            onPasswordToggle();
          },
          child: iconVisibility,
        ),
        const SizedBox(
          width: 8.0,
        ),
        // making the info suffix optional
        if (onInfoTap != null)
          GestureDetector(
            onTap: () {
              // Handle info icon tap logic
              onInfoTap!();
            },
            child: const Icon(Icons.info),
          ),
      ],
    );
  }
}
