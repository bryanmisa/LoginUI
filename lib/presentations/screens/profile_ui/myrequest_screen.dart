import 'package:login_ui/constants/commons.dart';

class MyRequestScreen extends StatelessWidget {
  const MyRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      hasAppbar: true,
      title: 'Text App',
      body: Column(
        children: [Text('My Request Screen')],
      ),
    );
  }
}
