import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_system/student_app/controllers/student_controllers.dart';
import 'package:school_system/student_app/student_view/student_auth.dart/widgets/custom_dropdown.dart';
import 'package:school_system/student_app/controllers/student_controllers.dart';
import 'package:school_system/student_app/student_view/student_bottomBar/student_bottombar_screen.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/widgets/App_custom_text.dart';
import 'package:school_system/widgets/app_custom_buttons.dart';
import 'package:school_system/widgets/app_custom_textfield_widget.dart';

class SignupPrincipleDetailScreen extends StatelessWidget {
  const SignupPrincipleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StudentAuth auth = Get.put(StudentAuth());
    dropDown dropdownController =
        Get.put(dropDown()); // Getx Controller for Dropdown

    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.15,
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.kWhite,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4),
                        child: CustomText(
                          text: 'Sign Up',
                          textStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.kWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomText(
                    text: 'Enter your details below & free sign up',
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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      // ID Field
                      CustomTextField(
                        controller: StudentControllers.ID,
                        label: 'ID',
                        hintText: 'Enter ID',
                        keyboardType: TextInputType.text,
                        suffixIcon: const SizedBox(),
                        prefixIcon: const SizedBox(),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey.shade300)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(child: Divider(color: Colors.grey.shade300)),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // Passport Field
                      CustomTextField(
                        controller: StudentControllers.IDPassword,
                        label: 'Passport',
                        hintText: 'Enter Passport Number',
                        keyboardType: TextInputType.text,
                        suffixIcon: const SizedBox(),
                        prefixIcon: const SizedBox(),
                      ),
                      const SizedBox(height: 8),

                      // Gender Dropdown (Using CustomDropDown Widget)
                      CustomDropDown(
                        label: 'Gender',
                        selectedItem: dropdownController.selectedGender,
                        options: dropdownController.genderOptions,
                        onChanged: (String? newValue) {
                          dropdownController.updateGender(newValue);
                        },
                      ),

                      const SizedBox(height: 8),
                      CustomTextField(
                        controller: StudentControllers.ID,
                        label: 'Personal Number',
                        hintText: 'Enter Number',
                        keyboardType: TextInputType.text,
                        suffixIcon: const SizedBox(),
                        prefixIcon: const SizedBox(),
                      ),
                      const SizedBox(height: 8),

                      // School Dropdown (Using CustomDropDown Widget)
                      CustomDropDown(
                        label: 'School',
                        selectedItem: dropdownController.selectedSchool,
                        options: dropdownController.schoolOptions,
                        onChanged: (String? newValue) {
                          dropdownController.updateSchool(newValue);
                        },
                      ),

                      const SizedBox(height: 8),

                      // Address Field
                      CustomTextField(
                        controller: StudentControllers.Address,
                        label: 'Address',
                        hintText: 'Enter Address',
                        keyboardType: TextInputType.text,
                        suffixIcon: const SizedBox(),
                        prefixIcon: const SizedBox(),
                      ),
                      const SizedBox(height: 15),

                      // Submit Button
                      PrimaryButton(
                        text: 'Submit',
                        function: () {
                          Get.to(() => StudentBottombarScreen());
                        },
                        width: Get.width * .85,
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
