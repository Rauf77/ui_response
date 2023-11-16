import '../../../core/app_export.dart';

/// This class is used in the [framelist1_item_widget] screen.
class Framelist1ItemModel {
  Framelist1ItemModel({
    this.input,
    this.id,
  }) {
    input = input ?? Rx(ImageConstant.imgInput1);
    id = id ?? Rx("");
  }

  Rx<String>? input;

  Rx<String>? id;
}
