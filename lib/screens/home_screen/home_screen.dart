import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:works/screens/setting_screen/setting_screen.dart';
import 'package:works/screens/user_screen/user_screen.dart';
import 'package:works/screens/works_screen/work_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> homeItems = [
    Text('Home'),
    buildWorkScreen(),
    buildSettingScreen(),
    buildUserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Image(image: AssetImage('assets/logo.png'), width: 100.0),
      ),
      body: Container(
        child: Center(
          child: homeItems[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.briefcase), label: "Works"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cog), label: "Setting"),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.user), label: "User"),
        ],
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.teal,
        selectedFontSize: 14.0,
        unselectedFontSize: 14.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
