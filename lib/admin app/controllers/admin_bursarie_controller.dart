import 'dart:developer';
import 'package:dio/dio.dart' as dio;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:school_system/services/shearepreference_service.dart';
import 'package:school_system/utils/app_textfields.dart';
import '../../utils/apis_endpoints.dart';
import '../admin_models/admin_burarie_model.dart';
import '../admin_models/admin_signin_model.dart';

class AdminBursarieController extends GetxController {
  RxBool adminBursarieBool = false.obs;

  @override
  void onInit() {
    super.onInit();

    getAdminBursarie();
  }

  final Rx<AdminBursarieModel?>   adminBursarie =
      Rx<AdminBursarieModel?>(null);


  // Loading Function Category
  setLoadingDashboard(value) {
    adminBursarieBool.value = value;
    update();
  }

// Get All category
  getAdminBursarie() async {
    AdminSignInModel user = await ShearedprefService.getUserData();
    log('Token ===${user.data!.token}');
    setLoadingDashboard(true);
    try {
      final response = await dio.Dio()
          .get(
            ApiService.adminbursaries,
            options: dio.Options(
              method: 'GET',
              headers: headersWithToken(user.data!.token),
            ),
          )
          .timeout(const Duration(seconds: 30));
      var mainResult = response.data;
      log('Main Result = $mainResult');
      if (response.statusCode == 200) {
        adminBursarie.value = AdminBursarieModel.fromJson(mainResult);
        log('adminBursarie == ${adminBursarie.value!.data}');
        setLoadingDashboard(false);
        update();
      } else {
        Fluttertoast.showToast(msg: "Oops! Dashboard Data not found!!!");
        setLoadingDashboard(false);
        update();
      }
    } catch (e) {
      log('e: $e');
      Fluttertoast.showToast(msg: "Oops! $e");
      setLoadingDashboard(false);
      update();
      return e.toString();
    }
  }

  clearData() {
    // SignUp Clear data
    AppTextfieldControllers.adminSignInEmail.clear();
    AppTextfieldControllers.adminSignInPassword.clear();
    update();
  }
}
