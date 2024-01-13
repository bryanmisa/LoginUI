import 'package:login_ui/constants/commons.dart';

class PasswordModalBottomSheet extends StatelessWidget {
  const PasswordModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 30.0),
              const CustomText(
                text: 'Password Rules',
                fontSize: 20,
                fontWeight: CustomFontWeight.bold,
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Passwords should be',
                  fontSize: 18,
                  fontWeight: CustomFontWeight.bold,
                ),
                SizedBox(height: 12.0),
                CustomText(text: 'Two passwords are matching', fontSize: 18),
                SizedBox(height: 12.0),
                CustomText(
                    text: 'Password between 8 and 18 characters', fontSize: 18),
                SizedBox(height: 12.0),
                CustomText(
                    text: 'Password contain at least one small letter',
                    fontSize: 18),
                SizedBox(height: 12.0),
                CustomText(
                    text: 'Password contain at least one capital letter',
                    fontSize: 18),
                SizedBox(height: 12.0),
                CustomText(
                    text: 'Password contain at least one number', fontSize: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
