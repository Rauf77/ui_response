import '../../../core/app_export.dart';
import 'stampdetails_item_model.dart';

/// This class defines the variables used in the [stampdetails_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StampdetailsModel {
  Rx<List<StampdetailsItemModel>> stampdetailsItemList = Rx([
    StampdetailsItemModel(widget: "スタンプを獲得しました。".obs, one: "1 個".obs),
    StampdetailsItemModel(widget: "スタンプを獲得しました。".obs, one: "1 個".obs),
    StampdetailsItemModel(widget: "スタンプを獲得しました。".obs, one: "1 個".obs),
    StampdetailsItemModel(widget: "スタンプを獲得しました。".obs, one: "1 個".obs)
  ]);
}
