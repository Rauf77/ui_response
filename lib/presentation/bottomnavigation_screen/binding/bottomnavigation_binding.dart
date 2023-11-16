import '../controller/bottomnavigation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BottomnavigationScreen.
///
/// This class ensures that the BottomnavigationController is created when the
/// BottomnavigationScreen is first loaded.
class BottomnavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomnavigationController());
  }
}
