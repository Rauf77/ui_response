import '../../../core/app_export.dart';

/// This class is used in the [photolist_item_widget] screen.
class PhotolistItemModel {
  PhotolistItemModel({
    this.widget,
    this.close,
    this.id,
  }) {
    widget = widget ?? Rx(ImageConstant.img20211122);
    close = close ?? Rx(ImageConstant.imgClose);
    id = id ?? Rx("");
  }

  Rx<String>? widget;

  Rx<String>? close;

  Rx<String>? id;
}
