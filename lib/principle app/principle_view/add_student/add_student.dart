import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/controllers/admin_school_controller.dart';
import 'package:school_system/teacher%20app/controllers/teacher_controller.dart';
import 'package:school_system/teacher%20app/teacher_view/student_screen/student_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class PrincipleAddStudent extends StatefulWidget {
  PrincipleAddStudent({super.key});

  @override
  _PrincipleAddStudentState createState() => _PrincipleAddStudentState();
}

class _PrincipleAddStudentState extends State<PrincipleAddStudent> {
  final TeacherController teacherController = Get.put(TeacherController());
  final AdminSchoolController menageSchoolController =
      Get.put(AdminSchoolController());

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, bottom: 5),
                    child: Row(
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
                            text: 'Add Student',
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
                                text: 'Note:',
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kRed,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              width: 309,
                              child: CustomText(
                                  text: 'Course contains following-things:',
                                  maxLines: 2,
                                  alignText: TextAlign.start,
                                  textStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.kGrey,
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const CustomText(
                                text: 'For Description:',
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.kBlack,
                                )),
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
                                suffixIcon: SizedBox(),
                                // suffixIcon: Icon(
                                //   Icons.arrow_forward_ios_outlined,
                                //   color: AppColors.kBlack999,
                                // ),
                                // hasSuffix: true,
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 20),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Course Title',
                                hintText: 'Sepedi',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: const SizedBox(),
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 8),
                            const SizedBox(height: 15),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Student Name',
                                hintText: 'Collins Mello',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: SizedBox(),
                                prefixIcon: const SizedBox()),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Email',
                                hintText: 'mellocollins97@gmail.com',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: SizedBox(),
                                prefixIcon: const SizedBox()),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Phone',
                                hintText: '05338507276',
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
                                text: 'Add Student',
                                width: double.infinity,
                                function: () {
                                  Get.to(() => StudentScreen());
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
