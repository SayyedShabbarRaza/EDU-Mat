import 'package:flutter/material.dart';
import 'package:school_system/principle%20app/principle_view/setMeeting/set_meeting.dart';
import 'package:school_system/principle%20app/principle_view/profile/principle_profile.dart';
import 'package:school_system/principle%20app/principle_view/home_screen.dart/home_screen.dart';
import 'package:school_system/student_app/student_view/student_courses/Student_courses_screen.dart';
import 'package:school_system/student_app/student_view/student_dashboard/student_dashboard_screen.dart';
import 'package:school_system/student_app/student_view/student_profile/student_profile.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_images.dart';

class PrincipleBottombar extends StatefulWidget {
  const PrincipleBottombar({super.key});

  @override
  State<PrincipleBottombar> createState() => _PrincipleBottombarState();
}

class _PrincipleBottombarState extends State<PrincipleBottombar> {
  int _selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    PrincipleHomeScreen(),
    PrincipleProfile(),
    SetMeeting()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
              backgroundColor: AppColors.noColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Courses',
              backgroundColor: AppColors.noColor),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: AppColors.noColor,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.kPrimary,
        unselectedItemColor: AppColors.kGrey7D1,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.kPrimary,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.kGrey7D1,
        ),
        iconSize: 25,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
