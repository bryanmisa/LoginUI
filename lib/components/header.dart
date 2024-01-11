import 'package:login_ui/constants/commons.dart';

class Header extends StatelessWidget {
  final String title;
  final String subTitle;

  const Header({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 300,
          child: SvgPicture.asset(
            LoginUIConstants.logoImage,
            fit: BoxFit.contain,
          ),
        ),
        CustomText(
          fontSize: 25.0,
          text: title,
          fontWeight: CustomFontWeight.bold,
          color: Colors.black87,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomText(
          text: subTitle,
          fontSize: 15,
          color: Colors.grey,
        ),
      ],
    );
  }
}
