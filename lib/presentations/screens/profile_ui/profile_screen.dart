import 'package:login_ui/constants/commons.dart';
import 'package:login_ui/presentations/screens/profile_ui/myrequest_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            icon: Icon(Icons.person),
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
