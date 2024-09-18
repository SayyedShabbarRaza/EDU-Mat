import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/admin%20app/controllers/admin_school_controller.dart';
import 'package:school_system/principle%20app/principle_view/home_screen.dart/home_screen.dart';
import 'package:school_system/teacher%20app/controllers/teacher_controller.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_select_courses.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class PrincipleAddAnnouncements extends StatefulWidget {
  PrincipleAddAnnouncements({super.key});

  @override
  _PrincipleAddAnnouncementsState createState() =>
      _PrincipleAddAnnouncementsState();
}

class _PrincipleAddAnnouncementsState extends State<PrincipleAddAnnouncements> {
  final TeacherController teacherController = Get.put(TeacherController());
  final AdminSchoolController menageSchoolController =
      Get.put(AdminSchoolController());

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                          text: 'Add Meeting Details',
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kWhite,
                          )),
                    ],
                  ),
                  const Padding(
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
                      CustomText(text: 'Note:', textStyle: TextStyle()),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
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
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                    text:
                                        'For Course Cover Picture (Only: jpg, jpeg, png)',
                                    textStyle: AppTextStyles().normal(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      textColor: AppColors.kGrey8D2,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                                maxLines: 10,
                                controller: TextEditingController(),
                                label: 'Enter Description',
                                hintText: '',
                                keyboardType: TextInputType.emailAddress,
                                suffixIcon: SizedBox(),
                                prefixIcon: const SizedBox()),
                            CustomTextField(
                                controller: TextEditingController(),
                                label: 'Select Date',
                                hintText: 'mm//dd/yyyy',
                                keyboardType: TextInputType.datetime,
                                suffixIcon: Icon(Icons.date_range_outlined),
                                prefixIcon: SizedBox()),
                            const SizedBox(
                              height: 40,
                            ),
                            PrimaryButton(
                                text: 'Add Announcements',
                                width: double.infinity,
                                function: () {
                                  Get.to(() => PrincipleHomeScreen());
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
