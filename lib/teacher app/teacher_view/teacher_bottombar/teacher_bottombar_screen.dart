import 'package:flutter/material.dart';
import 'package:school_system/student_app/student_view/student_courses/Student_courses_screen.dart';
import 'package:school_system/student_app/student_view/student_courses/student_course.dart';
import 'package:school_system/student_app/student_view/student_dashboard/student_dashboard_screen.dart';
import 'package:school_system/student_app/student_view/student_profile/student_profile.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_courses_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_dashboard/teacher_dashboard_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_profile/teacher_profile.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_images.dart';

class TeacherBottombarScreen extends StatefulWidget {
  const TeacherBottombarScreen({super.key});

  @override
  State<TeacherBottombarScreen> createState() => _TeacherBottombarScreenState();
}

class _TeacherBottombarScreenState extends State<TeacherBottombarScreen> {
  int _selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    TeacherDashBoard(),
    TeacherSelectCourses(),
    TeacherProfile(),
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
              icon: Icon(Icons.home),
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
