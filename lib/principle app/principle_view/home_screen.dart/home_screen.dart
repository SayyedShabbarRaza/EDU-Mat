import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/admin_view/admin_dashboard_screen/select_login_screen_inner_widget/admin_dashboard_widget.dart';
import 'package:school_system/principle%20app/principle_view/announcements/announcement.dart';
import 'package:school_system/principle%20app/principle_view/students/student.dart';
import 'package:school_system/principle%20app/principle_view/setMeeting/set_meeting.dart';
import 'package:school_system/principle%20app/principle_view/teachers/teachers.dart';
import 'package:school_system/student_app/student_view/student_courses/course_detail_screen.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/designed_card.dart';
import 'package:school_system/widgets/select_course_widget.dart';

class PrincipleHomeScreen extends StatelessWidget {
  const PrincipleHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 183,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.kPrimary,
            ),
            child: const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CustomText(
                            text: 'Hi,John Doe',
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kWhite,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: CircleAvatar(
                          minRadius: 25,
                          backgroundImage:
                              AssetImage('assets/app_images/profile.png'),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: CustomText(
                      text: 'Let\'s start learning',
                      textStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    DesignedCard(
                      image: AppImages.oldpaper,
                      title: 'Set Meetings',
                      subtitle: '--->',
                      color: Color(0x1A407BFF),
                      borderColor: AppColors.kBlack,
                      voidCallbackAction: () {
                        Get.to(() => SetMeeting());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DesignedCard(
                      image: AppImages.students,
                      subtitle: '--->',
                      title: 'Students',
                      color: Color(0x1A440687),
                      borderColor: AppColors.kBlack,
                      voidCallbackAction: () {
                        Get.to(() => PrincipleStudentScreen());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DesignedCard(
                      image: AppImages.staffimg,
                      subtitle: '--->',
                      title: 'Teacher',
                      color: Color(0x1AF7966C),
                      borderColor: AppColors.kBlack,
                      voidCallbackAction: () {
                        Get.to(PrincipleTeachersScreen());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DesignedCard(
                      image: AppImages.announcement,
                      subtitle: '--->',
                      title: 'Announcement',
                      color: Color(0x1AFC476A),
                      borderColor: AppColors.kBlack,
                      voidCallbackAction: () {
                        Get.to(() => PrincipleAnnouncements());
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
