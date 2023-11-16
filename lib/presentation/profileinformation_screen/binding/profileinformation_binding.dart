import '../controller/profileinformation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileinformationScreen.
///
/// This class ensures that the ProfileinformationController is created when the
/// ProfileinformationScreen is first loaded.
class ProfileinformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileinformationController());
  }
}
