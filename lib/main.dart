import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/admin_view/admin_bottombar/admin_bottombar_screen.dart';
import 'package:school_system/common_screen/select_login/select_login_screen.dart';
import 'package:school_system/principle%20app/principle_view/meeting_details/meeting_details_screen.dart';
import 'package:school_system/principle%20app/principle_view/setMeeting/set_meeting.dart';
import 'package:school_system/principle%20app/principle_view/bottomBar/principle_bottomBar.dart';
import 'package:school_system/principle%20app/principle_view/home_screen.dart/home_screen.dart';
import 'package:school_system/principle%20app/principle_view/students/student.dart';
import 'package:school_system/principle%20app/principle_view/principle_auth/register2_screen.dart';
import 'package:school_system/principle%20app/principle_view/principle_auth/register_screen.dart';
import 'package:school_system/services/shearepreference_service.dart';
import 'package:school_system/student_app/student_view/student_auth.dart/student_login_screen.dart';
import 'package:school_system/student_app/widgets/student_signUp2.dart';
import 'package:school_system/student_app/student_view/student_bottomBar/student_bottombar_screen.dart';
import 'package:school_system/student_app/student_view/student_courses/Student_courses_screen.dart';
import 'package:school_system/student_app/student_view/student_courses/course_detail_screen.dart';
import 'package:school_system/student_app/student_view/student_courses/course_timetable.dart';
import 'package:school_system/student_app/student_view/student_courses/student_course.dart';
import 'package:school_system/teacher%20app/teacher_view/student_screen/add_student.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ShearedprefService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      // debugShowCheckedModeBanner: false,
      // initialRoute: '/introScreen',
      getPages: routes,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.kPrimary,
          onPrimary: AppColors.kWhite,
          secondary: AppColors.kWhite,
          onSecondary: AppColors.kRed,
          error: AppColors.kRed,
          onError: AppColors.kWhite,
          surface: AppColors.kWhite,
          onSurface: AppColors.kRed,
        ),
        scaffoldBackgroundColor: AppColors.kWhite,
      ),
      home: PrincipleBottombar(),
    );
  }
}
