import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/teacher%20app/teacher_view/teacher_courses/add_mark_screen.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';

import '../utils/app_images.dart';

class EnrollmentWidget extends StatelessWidget {
  final String image;
  final String title;
  final String email;
  final String date;
  final String phoneno;
  final VoidCallback? ontap;

  EnrollmentWidget({
    super.key,
    required this.image,
    required this.email,
    required this.date,
    required this.phoneno,
    required this.title,
    this.ontap,
  });

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    color: AppColors.kBlueAFF,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Center(
                    child: image.isEmpty
                        ? const Image(image: AssetImage(AppImages.student))
                        : Image(image: NetworkImage(image)),
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title.isEmpty ? 'No Title' : title,
                        textStyle: AppTextStyles().normal(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.kBlack,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: AppColors.kGrey,
                            size: 10,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: email.isEmpty ? 'No Email' : email,
                            maxLines: 2,
                            ellipsisText: true,
                            textStyle: AppTextStyles().normal(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.kGrey7D1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 10,
                            color: AppColors.kBlack999,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: phoneno.isEmpty ? 'No Phone Number' : phoneno,
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kBlack999,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            size: 10,
                            color: AppColors.kRed,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: date.isEmpty ? 'No Date' : date,
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kRed,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    GestureDetector(
                      onTap: ontap, // Ensure ontap is passed here for deletion.
                      child: Icon(
                        Icons.delete,
                        color: AppColors.kRed,
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomText(
                      text: 'Remove',
                      textStyle: AppTextStyles().normal(
                        fontSize: 4,
                        fontWeight: FontWeight.w400,
                        textColor: AppColors.kRed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                  width: 142,
                  height: 41,
                  text: 'Add Marks',
                  function: () {
                    Get.to(() => AddMarkScreen());
                  },
                  color: AppColors.noColor,
                  tcolor: AppColors.kBlue,
                  borderColor: AppColors.kBlue,
                ),
                PrimaryButton(
                  width: 142,
                  height: 41,
                  text: 'Mark Sheet',
                  function: () {},
                  color: AppColors.noColor,
                  tcolor: AppColors.kGreen,
                  borderColor: AppColors.kGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TeachersEnrollmentWidget extends StatelessWidget {
  final String image;
  final String title;
  final String email;
  final String date;
  final String phoneno;
  final VoidCallback? ontap;

  TeachersEnrollmentWidget({
    super.key,
    required this.image,
    required this.email,
    required this.date,
    required this.phoneno,
    required this.title,
    this.ontap,
  });

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    color: AppColors.kBlueAFF,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Center(
                    child: image.isEmpty
                        ? const Image(image: AssetImage(AppImages.teacher2))
                        : Image(image: NetworkImage(image)),
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title.isEmpty ? 'No Title' : title,
                        textStyle: AppTextStyles().normal(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.kBlack,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 10,
                            color: AppColors.kGrey,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: email.isEmpty ? 'No Email' : email,
                            maxLines: 2,
                            ellipsisText: true,
                            textStyle: AppTextStyles().normal(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              textColor: AppColors.kGrey7D1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 10,
                            color: AppColors.kBlue,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: phoneno.isEmpty ? 'No Phone Number' : phoneno,
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kBlue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            size: 10,
                            color: AppColors.kOrange,
                          ),
                          const SizedBox(width: 5),
                          CustomText(
                            text: date.isEmpty ? 'No Date' : date,
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: AppColors.kOrange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    GestureDetector(
                      onTap: ontap, // Ensure ontap is passed here for deletion.
                      child: Icon(
                        Icons.delete,
                        color: AppColors.kRed,
                        // size: 10,
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomText(
                      text: 'Remove',
                      textStyle: AppTextStyles().normal(
                        fontSize: 4,
                        fontWeight: FontWeight.w400,
                        textColor: AppColors.kRed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 19),
            PrimaryButton(
              width: 300,
              height: 41,
              text: 'Set Meeting',
              function: () {
                Get.to(() => AddMarkScreen());
              },
              color: AppColors.noColor,
              tcolor: AppColors.kBlue,
              borderColor: AppColors.kBlue,
            ),
          ],
        ),
      ),
    );
  }
}

class PrincipleAnnouncementsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final VoidCallback? ontap;

  PrincipleAnnouncementsWidget({
    super.key,
    required this.image,
    required this.date,
    required this.title,
    this.ontap,
  });

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 68,
                  width: 68,
                  decoration: BoxDecoration(
                    color: AppColors.kBlueAFF,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Center(
                    child: image.isEmpty
                        ? const Image(image: AssetImage(AppImages.emptyImage))
                        : Image(image: NetworkImage(image)),
                  ),
                ),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Description',
                            textStyle: AppTextStyles().normal(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.kBlack,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.date_range,
                                    size: 10,
                                    color: AppColors.kOrange,
                                  ),
                                  const SizedBox(width: 5),
                                  CustomText(
                                    text: date.isEmpty ? 'No Date' : date,
                                    textStyle: AppTextStyles().normal(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      textColor: AppColors.kOrange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomText(
                          text: title,
                          textStyle: const TextStyle(color: AppColors.kGrey))
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                  width: 142,
                  height: 41,
                  text: 'Edit',
                  function: () {
                    Get.to(() => AddMarkScreen());
                  },
                  color: AppColors.noColor,
                  tcolor: AppColors.kBlue,
                  borderColor: AppColors.kBlue,
                ),
                PrimaryButton(
                  width: 142,
                  height: 41,
                  text: 'Remove',
                  function: () {},
                  color: AppColors.noColor,
                  tcolor: AppColors.kRed,
                  borderColor: AppColors.kRed,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
