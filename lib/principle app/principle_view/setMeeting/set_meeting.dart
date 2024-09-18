import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/admin_view/admin_dashboard_screen/select_login_screen_inner_widget/admin_dashboard_widget.dart';
import 'package:school_system/principle%20app/principle_view/meeting_details/meeting_details_screen.dart';
import 'package:school_system/principle%20app/principle_view/teachers/teachers.dart';
import 'package:school_system/student_app/student_view/student_courses/course_detail_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/student_screen/add_student.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/designed_card.dart';
import 'package:school_system/widgets/select_course_widget.dart';

class SetMeeting extends StatelessWidget {
  const SetMeeting({super.key});

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.kWhite,
                              )),
                          const CustomText(
                            text: 'Set Meeting',
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
                    DesignedCard(
                      image: AppImages.students,
                      subtitle: '--->',
                      title: 'Students',
                      color: Color(0x1A440687),
                      borderColor: AppColors.kBlack,
                      voidCallbackAction: () {
                        Get.to(() => AddMeetingDetails());
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
                        Get.to(() => PrincipleTeachersScreen());
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
