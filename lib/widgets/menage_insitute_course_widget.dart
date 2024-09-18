import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:school_system/admin%20app/admin_view/admin_dashboard_screen/admin_dashboard_screen.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/teacher_enrollment_screen.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';

import '../utils/app_images.dart';

// ignore: must_be_immutable
class MenageInsituteCourseWidget extends StatelessWidget {
  String image;
  String title;
  String courseCode;
  String date;
  String language;
  String? codeimg;
  String? codetext;
  String? link;
  VoidCallback? ontap;

  MenageInsituteCourseWidget(
      {super.key,
      required this.image,
      this.codeimg,
      required this.courseCode,
      required this.date,
      required this.language,
      required this.title,
      this.link,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kGrey8D2, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(top: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    color: AppColors.kBlueAFF,
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Center(
                    child: image == ''
                        ? const Image(
                            image: AssetImage(AppImages.school),
                          )
                        : Image(image: NetworkImage(image)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        textStyle: AppTextStyles().normal(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.kBlack,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          CustomText(
                            text: courseCode,
                            textStyle: AppTextStyles().normal(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kGrey7D1,
                            ),
                          ),
                          codeimg == ''
                              ? Container(
                                  height: 20,
                                  width: 20,
                                  child: Image(
                                    image: AssetImage(
                                      AppImages.svgrepo,
                                    ),
                                  ),
                                )
                              : Image(image: NetworkImage(image)),
                          const SizedBox(height: 5),
                          CustomText(
                            text: 'code',
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kBlack,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      CustomText(
                        text: date,
                        textStyle: AppTextStyles().normal(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textColor: AppColors.kRed,
                        ),
                      ),
                      const SizedBox(height: 5),
                      link == ''
                          ? const SizedBox()
                          : CustomText(
                              text: language,
                              textStyle: AppTextStyles().normal(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                textColor: AppColors.kRed,
                              ),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image.asset(AppImages.editsvgrepo),
                    CustomText(
                      text: 'Edit',
                      textStyle: AppTextStyles().normal(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: AppColors.kBlack,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryButton(
                    width: 142,
                    height: 41,
                    text: 'Enrollments',
                    function: () {
                      Get.to(() => TeacherEnrollmentScreen());
                    },
                    color: AppColors.noColor,
                    tcolor: AppColors.kGreen,
                    borderColor: AppColors.kGreen,
                  ),
                  PrimaryButton(
                    width: 142,
                    height: 41,
                    text: 'Add Data',
                    function: () {},
                    color: AppColors.noColor,
                    tcolor: AppColors.purpleColor,
                    borderColor: AppColors.purpleColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
