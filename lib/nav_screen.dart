import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ufs_task/home_page/screens/home_screen.dart';
import 'package:ufs_task/home_page/screens/mentors_screen.dart';
import 'package:ufs_task/home_page/screens/my_courses.dart';
import 'package:ufs_task/home_page/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomeScreen(),
    MyCourses(),
    MentorsScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home_ic.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/my_courses_ic.svg'),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/mentor_ic.svg'),
            label: 'Mentors',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/profile_ic.svg'),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color(0xff1863D3),
        selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: const Color(0xff1863D3)),
        unselectedItemColor: const Color(0xff6A7487),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        showUnselectedLabels: true,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
