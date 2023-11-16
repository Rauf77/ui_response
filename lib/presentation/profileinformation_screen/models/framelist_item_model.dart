import '../../../core/app_export.dart';

/// This class is used in the [framelist_item_widget] screen.
class FramelistItemModel {
  FramelistItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
