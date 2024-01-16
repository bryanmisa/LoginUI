import 'package:login_ui/constants/commons.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final bool hasDrawer;
  final bool hasAppbar;
  final String title;
  final Widget? bottomNavigationBar;

  const CustomScaffold({
    super.key,
    required this.body,
    this.hasDrawer = false,
    this.hasAppbar = false,
    this.title = '',
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: hasDrawer ? const Drawer() : null,
      appBar: hasAppbar
          ? AppBar(
              actions: const [
                SizedBox(
                  width: 10,
                )
              ],
              elevation: 3.0,
              centerTitle: true,
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: body,
        ),
      ),
    );
  }
}
