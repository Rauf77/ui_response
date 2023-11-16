import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController whereDoYouWorkController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  @override
  void onClose() {
    super.onClose();
    whereDoYouWorkController.dispose();
  }
}
