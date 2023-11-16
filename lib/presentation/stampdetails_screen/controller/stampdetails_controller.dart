import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/presentation/stampdetails_screen/models/stampdetails_model.dart';

/// A controller class for the StampdetailsScreen.
///
/// This class manages the state of the StampdetailsScreen, including the
/// current stampdetailsModelObj
class StampdetailsController extends GetxController {
  Rx<StampdetailsModel> stampdetailsModelObj = StampdetailsModel().obs;
}
