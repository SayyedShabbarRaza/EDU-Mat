import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/principle%20app/principle_view/add_student/add_student.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/enrollment_widget.dart';

class PrincipleStudentScreen extends StatelessWidget {
  PrincipleStudentScreen({super.key});

  final List<Map<String, String>> courses = [
    {
      'image': '',
      'title': 'Collins Mello',
      'email': 'mellocollins97@gmail.com',
      'phoneno': '05338507276',
      'date': '27-10-2024',
    },
    {
      'image': '',
      'title': 'Collins Mello',
      'email': 'mellocollins97@gmail.com',
      'phoneno': '05338507276',
      'date': '27-10-2024',
    },
    {
      'image': '',
      'title': 'Collins Mello',
      'email': 'mellocollins97@gmail.com',
      'phoneno': '05338507276',
      'date': '27-10-2024',
    },
  ];

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
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.kWhite,
                            ),
                          ),
                          const CustomText(
                            text: 'Students',
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.kWhite,
                            ),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        minRadius: 25,
                        backgroundImage:
                            AssetImage('assets/app_images/profile.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0, left: 15),
                    child: CustomText(
                      text: 'All Students (3)',
                      textStyle: TextStyle(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: PrimaryButton(
              text: 'Add Student',
              function: () {
                Get.to(() => PrincipleAddStudent());
              },
              tcolor: AppColors.kPrimary,
              color: AppColors.kTcolor,
              width: Get.width * .9,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return EnrollmentWidget(
                  image: courses[index]['image']!,
                  title: courses[index]['title']!,
                  email: courses[index]['email']!,
                  phoneno: courses[index]['phoneno']!,
                  date: courses[index]['date']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
