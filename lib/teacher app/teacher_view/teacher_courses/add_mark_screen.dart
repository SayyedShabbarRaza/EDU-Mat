import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/controllers/admin_school_controller.dart';
import 'package:school_system/teacher%20app/controllers/teacher_controller.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_enrollment_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class AddMarkScreen extends StatefulWidget {
  AddMarkScreen({super.key});

  @override
  _AddMarkScreenState createState() => _AddMarkScreenState();
}

class _AddMarkScreenState extends State<AddMarkScreen> {
  final TeacherController teacherController = Get.put(TeacherController());

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
                            text: 'Add Marks',
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
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Choose Quarter',
                                hintText: 'Select',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: AppColors.kBlack999,
                                ),
                                hasSuffix: true,
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 20),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Set Marks Out Of 100',
                                hintText: 'Enter Student Marks',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: const SizedBox(),
                                prefixIcon: const SizedBox()),
                            const SizedBox(height: 31),
                            PrimaryButton(
                                text: 'Set Marks',
                                width: double.infinity,
                                function: () {
                                  Get.to(() => TeacherEnrollmentScreen());
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
