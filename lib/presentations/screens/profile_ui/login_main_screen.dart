import 'package:login_ui/constants/commons.dart';

class LoginMainScreen extends StatefulWidget {
  const LoginMainScreen({super.key});

  @override
  State<LoginMainScreen> createState() => _LoginMainScreenState();
}

class _LoginMainScreenState extends State<LoginMainScreen> {
  int _selectedIndex = 0;

  // Define your pages or sections here
  final List<Widget> _pages = [
    PageOne(),
    MyRequestScreen(),
    PageThree(),
    PageFour(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TitledBottomNavigationBar(
        items: [
          TitledNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            title: Text('Home'),
          ),
          TitledNavigationBarItem(
            icon: Icon(Icons.edit_document),
            title: Text('My Request'),
          ),
          TitledNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            title: Text('Notifications'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        indicatorColor: Colors.blue,
        activeColor: Colors.blue,
        reverse: true,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page One'),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Two'),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Three'),
    );
  }
}

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page Three'),
    );
  }
}
