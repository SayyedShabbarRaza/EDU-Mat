import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/add_new_course_screen.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/app_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/menage_insitute_course_widget.dart';
import 'package:school_system/widgets/menage_insitute_widget.dart';

class TeacherSelectCourses extends StatelessWidget {
  const TeacherSelectCourses({super.key});

  @override
  Widget build(BuildContext context) {
  
    final List<Map<String, String>> courses = [
      {
        'image': '',
        'title': 'Machine Learning',
        'CourseCode': 'ITEC511-01-2024-242',
        'codeimg': '',
        'date': '27-10-2024',
        'language': 'sepedi sa leboa'
      },
      {
        'image': '',
        'title': 'Java Development',
        'CourseCode': 'Computer Science',
        'date': '27-10-2024',
        'codeimg': '',
        'language': 'sepedi sa leboa'
      },
    ];

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
                              Icons.arrow_back,
                              color: AppColors.kWhite,
                            ),
                          ),
                          const CustomText(
                            text: 'Courses',
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
                          backgroundImage: AssetImage(AppImages.profile),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: CustomText(
                      text: '5 Courses',
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
          const SizedBox(height: 20),
          PrimaryButton(
            text: 'Add New Course',
            function: () {
              Get.to(() => AddNewCourseScreen());
            },
            tcolor: AppColors.kPrimary,
            color: AppColors.kTcolor,
            width: Get.width * .8,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemCount: courses.length, // Based on course data list
              itemBuilder: (context, index) {
                return MenageInsituteCourseWidget(
                  image: courses[index]['image']!,
                  codeimg: courses[index]['codeimg']!,
                  courseCode: courses[index]['CourseCode']!,
                  title: courses[index]['title']!,
                  date: courses[index]['date']!,
                  language: courses[index]['language']!,
                  ontap: () {
                    // Handle the tap on the link
                    print('Tapped on ${courses[index]['title']}');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
