import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/admin_view/admin_dashboard_screen/select_login_screen_inner_widget/admin_dashboard_widget.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/assignment_widget.dart';
import 'package:school_system/widgets/course_details_widget.dart';

class StudentDashBoard extends StatelessWidget {
  const StudentDashBoard({super.key});

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
                          text: 'Hi, Kristin',
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
                Container(
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 80),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Universities',
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kBlack,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height: 20),

                          
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  3, 
                              itemBuilder: (context, index) {
                                return CourseDetailsWidget(
                                  image: AppImages
                                      .uniimg, 
                                  insituteName: "University of Maryland",
                                  courseName:
                                      "Bachelor of Science in Cybersecurity Management",
                                  logo: AppImages
                                      .unilogo, 
                                );
                              },
                            ),
                          ),

                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Colleges',
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.kBlack,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height: 20), // Adjust spacing if needed

                          // Horizontal list for colleges
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  3, // Number of items you want to display
                              itemBuilder: (context, index) {
                                return CourseDetailsWidget(
                                  image: AppImages
                                      .uniimg, // Path to your university image
                                  insituteName: "University of Maryland",
                                  courseName:
                                      "Bachelor of Science in Cybersecurity Management",
                                  logo: AppImages
                                      .unilogo, // Path to a logo or icon
                                );
                              },
                            ),
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          SelectLoginWidget(
                            image: AppImages.oldpaper,
                            subtitle: '--->',
                            title: 'Old Question Papers',
                            color: AppColors.purpleColor.withOpacity(0.3),
                            voidCallbackAction: () {},
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SelectLoginWidget(
                            image: AppImages.quiz,
                            subtitle: '--->',
                            title: 'Quiz/Exams',
                            color: AppColors.kBlue3F2,
                            voidCallbackAction: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              
                Positioned(
                  top:
                      -50, 
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white, // White color for the noticeboard
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
                      padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
