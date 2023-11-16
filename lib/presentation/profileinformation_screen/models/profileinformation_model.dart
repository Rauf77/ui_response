import '../../../core/app_export.dart';
import 'photolist_item_model.dart';
import 'framelist_item_model.dart';
import 'framelist1_item_model.dart';
import 'package:abdulla_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [profileinformation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileinformationModel {
  Rx<List<PhotolistItemModel>> photolistItemList = Rx([
    PhotolistItemModel(
        widget: ImageConstant.img20211122.obs,
        close: ImageConstant.imgClose.obs),
    PhotolistItemModel(widget: ImageConstant.imgFlag.obs)
  ]);

  Rx<List<FramelistItemModel>> framelistItemList =
      Rx(List.generate(3, (index) => FramelistItemModel()));

  Rx<List<Framelist1ItemModel>> framelist1ItemList =
      Rx([Framelist1ItemModel(input: ImageConstant.imgInput1.obs)]);

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList4 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
