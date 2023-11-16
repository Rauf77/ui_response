import '../controller/stampdetails_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StampdetailsScreen.
///
/// This class ensures that the StampdetailsController is created when the
/// StampdetailsScreen is first loaded.
class StampdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StampdetailsController());
  }
}
