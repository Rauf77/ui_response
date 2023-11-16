import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/presentation/bottomnavigation_screen/models/bottomnavigation_model.dart';

/// A controller class for the BottomnavigationScreen.
///
/// This class manages the state of the BottomnavigationScreen, including the
/// current bottomnavigationModelObj
class BottomnavigationController extends GetxController {
  Rx<BottomnavigationModel> bottomnavigationModelObj =
      BottomnavigationModel().obs;
}
