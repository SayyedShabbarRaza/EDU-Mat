import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/controllers/admin_school_controller.dart';
import 'package:school_system/teacher%20app/controllers/teacher_controller.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class EditCourseScreen extends StatefulWidget {
  EditCourseScreen({super.key});

  @override
  _EditCourseScreenState createState() => _EditCourseScreenState();
}

class _EditCourseScreenState extends State<EditCourseScreen> {
  final TeacherController teacherController = Get.put(TeacherController());
  final AdminSchoolController menageSchoolController =
      Get.put(AdminSchoolController());
  // List of weekdays
  final List<String> daysOfWeek = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  List<bool> selectedDays = List.filled(7, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.kPrimary,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 5),
                    child: Row(
                      children: [
                        CustomText(
                            text: 'Edit Course',
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: AppColors.kWhite,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 15),
                    child: CustomText(
                        text: 'Enter your details below',
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kWhite,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                                text: 'For Description:',
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kBlack,
                                )),
                            const SizedBox(height: 3),
                            const SizedBox(
                              width: 309,
                              child: CustomText(
                                  text:
                                      'All things that are required, we have to fulfil and add Course:',
                                  maxLines: 2,
                                  alignText: TextAlign.start,
                                  textStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.kGrey,
                                  )),
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Course Code',
                                hintText: 'ITEC-0824-7fab',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: const SizedBox(),
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 20),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Course Title',
                                hintText: 'Enter Course Title',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: const SizedBox(),
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                    child:
                                        Divider(color: Colors.grey.shade400)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    'Set Timetable',
                                    style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child:
                                        Divider(color: Colors.grey.shade400)),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: CustomTextField(
                                      controller: TextEditingController(),
                                      label: 'Class Start Time',
                                      hintText: '--- ---',
                                      keyboardType: TextInputType.emailAddress,
                                      suffixIcon: Icon(
                                        Icons.timer,
                                        color: AppColors.kBlack,
                                      ),
                                      hasSuffix: true,
                                      prefixIcon: const SizedBox()),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: CustomTextField(
                                      controller: TextEditingController(),
                                      label: 'Class End Time',
                                      hintText: '--- ---',
                                      keyboardType: TextInputType.emailAddress,
                                      suffixIcon: Icon(
                                        Icons.timer,
                                        color: AppColors.kBlack,
                                      ),
                                      prefixIcon: const SizedBox()),
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Days',
                                hintText: 'Select days',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColors.kBlack,
                                ),
                                prefixIcon: const SizedBox()),
                            Card(
                              elevation: 3,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade500),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Wrap(
                                  spacing: 10.0,
                                  runSpacing: 10.0,
                                  children: daysOfWeek.map((day) {
                                    int index = daysOfWeek.indexOf(day);
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedDays[index] =
                                              !selectedDays[index];
                                        });
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Checkbox(
                                            value: selectedDays[index],
                                            onChanged: (value) {
                                              setState(() {
                                                selectedDays[index] =
                                                    value ?? false;
                                              });
                                            },
                                          ),
                                          Text(
                                            day,
                                            style: TextStyle(
                                                color: selectedDays[index]
                                                    ? Colors.black
                                                    : Colors.grey,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            CustomTextField(
                                maxLines: 10,
                                controller: TextEditingController(),
                                label: 'Enter Description',
                                hintText: '',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: SizedBox(),
                                prefixIcon: const SizedBox()),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Select File',
                                  textStyle: AppTextStyles().normal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textColor: AppColors.kGrey8D2,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: AppColors.kGrey8D2,
                                    ),
                                    color: AppColors.kWhite,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Obx(
                                        () => menageSchoolController
                                                    .itemImage.value ==
                                                null
                                            ? CustomText(
                                                text: 'Select File',
                                                textStyle:
                                                    AppTextStyles().normal(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: AppColors.kGrey8D2,
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  menageSchoolController
                                                      .pickItemImages();
                                                },
                                                child: Container(
                                                  width: 132,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    // color: AppColors.kPrimary,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: FileImage(
                                                        File(
                                                          menageSchoolController
                                                              .itemImage
                                                              .value!
                                                              .path,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          log('tap');
                                          menageSchoolController
                                              .pickItemImages();
                                        },
                                        child: Container(
                                          width: 132,
                                          height: 33,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColors.kPrimary,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(
                                                Icons.folder_rounded,
                                                color: AppColors.kWhite,
                                              ),
                                              CustomText(
                                                text: 'Browse …',
                                                textStyle:
                                                    AppTextStyles().normal(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  textColor: AppColors.kWhite,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            CustomText(
                                text:
                                    'For Course Cover Picture (Only: jpg, jpeg, png)',
                                textStyle: AppTextStyles().normal(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppColors.kGrey8D2,
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                            PrimaryButton(
                                text: 'Update Course',
                                width: double.infinity,
                                function: () {
                                  Get.to(() => TeacherSelectCourses());
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
