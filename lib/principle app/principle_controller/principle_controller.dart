import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrincipleControllers {
  // Student Log in Data
  static final TextEditingController studentSignInEmail =
      TextEditingController();
  static final TextEditingController studentSignInPassword =
      TextEditingController();

  //Student signup Data
  static final TextEditingController firstName = TextEditingController();
  static final TextEditingController lastName = TextEditingController();
  static final TextEditingController emailAddress = TextEditingController();
  static final TextEditingController contact = TextEditingController();
  static final TextEditingController password = TextEditingController();
  static final TextEditingController confirmPassword = TextEditingController();
  static final TextEditingController courseCode = TextEditingController();

  //Student signup Data
  static final TextEditingController ID = TextEditingController();
  static final TextEditingController IDPassword = TextEditingController();
  static final TextEditingController Gender = TextEditingController();
  static final TextEditingController Grade = TextEditingController();
  static final TextEditingController School = TextEditingController();
  static final TextEditingController Address = TextEditingController();
}

class PrincipleAuth extends GetxController {
  RxBool check = false.obs;

  void onCheck(bool? value) {
    if (value != null) {
      check.value = value;
    }
  }
}

class PrincipledropDown extends GetxController {
  RxString selectedGender = ''.obs;
  RxString selectedGrade = ''.obs;
  RxString selectedSchool = ''.obs;
  RxString selectedDepartment = ''.obs;
  RxString selectedDay = ''.obs;

  List<String> genderOptions = ['Male', 'Female', 'Other'];
  List<String> gradeOptions = ['Grade 1', 'Grade 2', 'Grade 3'];
  List<String> schoolOptions = ['School A', 'School B', 'School C'];
  List<String> departmentOptions = ['School A', 'School B', 'School C'];
  List<String> dayOptions = ['Mon', 'Tues', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  void updateGender(String? newValue) {
    selectedGender.value = newValue ?? '';
  }

  void updateGrade(String? newValue) {
    selectedGrade.value = newValue ?? '';
  }

  void updateSchool(String? newValue) {
    selectedSchool.value = newValue ?? '';
  }

  void updateDepartment(String? newValue) {
    selectedDepartment.value = newValue ?? '';
  }

  void updateDay(String? newValue) {
    selectedDay.value = newValue ?? '';
  }
}
