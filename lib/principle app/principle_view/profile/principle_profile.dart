import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:school_system/admin%20app/controllers/admin_school_controller.dart';
import 'package:school_system/principle%20app/principle_controller/principle_controller.dart';
import 'package:school_system/student_app/controllers/student_controllers.dart';
import 'package:school_system/student_app/student_view/student_auth.dart/widgets/custom_dropdown.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/utils/app_images.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class PrincipleProfile extends StatelessWidget {
  PrincipleProfile({super.key});
  PrincipleAuth auth = Get.put(PrincipleAuth());
  PrincipledropDown dropdownController =
      Get.put(PrincipledropDown()); // Getx Controller for Dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // padding:
            //     const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: const Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
          // Background Header
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: AppColors.kPrimary,
            child: Center(
              child: CustomText(
                text: 'Profile',
                textStyle: AppTextStyles().heading(
                  textColor: AppColors.kWhite,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Profile Image and Form
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            left: MediaQuery.of(context).size.width * 0.30,
            child: Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.profile),
                ),
                // border: Border.all(color: Colors.white, width: 4.0),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            right: MediaQuery.of(context).size.width * 0.35,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: AppColors.kWhite,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  size: 15,
                  color: AppColors.kBlack,
                ),
              ),
            ),
          ),

          // Positioned(
          //     top: MediaQuery.of(context).size.height * 0.4,
          //     right: MediaQuery.of(context).size.width * 0.66,
          //     child: CustomText(
          //       text: 'Current Password',
          //       textStyle: AppTextStyles()
          //           .normal(fontSize: 14, textColor: AppColors.kBlack),
          //     )),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'First Name',
                    hintText: 'Jhon',
                    keyboardType: TextInputType.text,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Last Name',
                    hintText: 'Doe',
                    keyboardType: TextInputType.text,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Email',
                    hintText: 'jhondoe@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Contact',
                    hintText: '0670006985',
                    keyboardType: TextInputType.number,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDropDown(
                    label: 'Gender',
                    selectedItem: dropdownController.selectedGender,
                    options: dropdownController.genderOptions,
                    onChanged: (String? newValue) {
                      dropdownController.updateGender(newValue);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomDropDown(
                    label: 'Department',
                    selectedItem: dropdownController.selectedDepartment,
                    options: dropdownController.departmentOptions,
                    onChanged: (String? newValue) {
                      dropdownController.updateGender(newValue);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Address Line 1',
                    hintText: '37 dick mullerstreet',
                    keyboardType: TextInputType.text,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: TextEditingController(),
                    label: 'Address Line 2',
                    hintText: 'Norkerum Park',
                    keyboardType: TextInputType.text,
                    suffixIcon: const SizedBox(),
                    prefixIcon: const SizedBox(),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  PrimaryButton(
                      text: 'Update Profile',
                      color: AppColors.kWhite,
                      tcolor: AppColors.kBlue,
                      width: Get.width,
                      function: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                      text: 'Delete',
                      color: AppColors.kWhite,
                      tcolor: AppColors.kRed,
                      borderColor: AppColors.kRed,
                      width: Get.width,
                      function: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
