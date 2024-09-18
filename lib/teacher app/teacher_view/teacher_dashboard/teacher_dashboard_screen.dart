import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/teacher%20app/teacher_view/announcements/announcement_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/student_screen/student_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/course_details_widget.dart';
import 'package:school_system/widgets/home_start_widget.dart';

class TeacherDashBoard extends StatelessWidget {
  const TeacherDashBoard({super.key});

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: CustomText(
                          text: 'Hi, Jane Sefala',
                          textStyle: AppTextStyles().heading(
                              textColor: AppColors.kWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 2),
                        child: CircleAvatar(
                          minRadius: 25,
                          backgroundImage: AssetImage(AppImages.profile),
                        ),
                      ),
                    ],
                  ),
                  const CustomText(
                    text: 'Let\'s start learning',
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Container that wraps SingleChildScrollView
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 50,
                        childAspectRatio: 2,
                        padding: const EdgeInsets.only(top: 100),
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => TeacherSelectCourses());
                            },
                            child: HomeStartWidget(
                                image: AppImages.oldpaper, title: 'Course'),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => StudentScreen());
                            },
                            child: HomeStartWidget(
                              image: AppImages.student,
                              title: 'Student',
                              textColor: AppColors.purpleColor,
                              bgcolor: AppColors.purpleColor.withOpacity(0.2),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => AnnouncementScreen());
                            },
                            child: HomeStartWidget(
                                image: AppImages.principleimg,
                                textColor: AppColors.kRed,
                                bgcolor: AppColors.kRed905.withOpacity(0.1),
                                title: 'Announcement'),
                          ),
                          HomeStartWidget(
                              bgcolor: AppColors.kBlue3F2.withOpacity(0.5),
                              image: AppImages.paper,
                              title: 'Results'),
                          HomeStartWidget(
                              image: AppImages.oldpaper,
                              textColor: AppColors.kGreen,
                              bgcolor: AppColors.kGreen.withOpacity(0.1),
                              title: 'Helping Material'),
                          HomeStartWidget(
                              textColor: AppColors.kOrangefe,
                              bgcolor: AppColors.kOrangefe.withOpacity(0.1),
                              image: AppImages.newsFeed,
                              title: 'News Feed'),
                        ]),
                  ),
                ),

                Positioned(
                  top: -50,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Noticeboard',
                            textStyle: AppTextStyles().subHeading(
                                textColor: AppColors.kBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 12),
                          Expanded(
                            child: Center(
                              child: CustomText(
                                alignText: TextAlign.center,
                                text: '"Closed for renovation improvements"',
                                textStyle: AppTextStyles().subHeading(
                                    textColor: AppColors.kBlack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
