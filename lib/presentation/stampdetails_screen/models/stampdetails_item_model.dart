import '../../../core/app_export.dart';

/// This class is used in the [stampdetails_item_widget] screen.
class StampdetailsItemModel {
  StampdetailsItemModel({
    this.widget,
    this.one,
    this.id,
  }) {
    widget = widget ?? Rx("スタンプを獲得しました。");
    one = one ?? Rx("1 個");
    id = id ?? Rx("");
  }

  Rx<String>? widget;

  Rx<String>? one;

  Rx<String>? id;
}
