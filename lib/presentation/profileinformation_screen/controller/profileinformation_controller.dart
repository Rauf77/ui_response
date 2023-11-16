import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/presentation/profileinformation_screen/models/profileinformation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileinformationScreen.
///
/// This class manages the state of the ProfileinformationScreen, including the
/// current profileinformationModelObj
class ProfileinformationController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  TextEditingController inputController2 = TextEditingController();

  TextEditingController inputController3 = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  TextEditingController inputController4 = TextEditingController();

  TextEditingController inputController5 = TextEditingController();

  TextEditingController inputController6 = TextEditingController();

  Rx<ProfileinformationModel> profileinformationModelObj =
      ProfileinformationModel().obs;

  Rx<bool> smokingSeatRow = false.obs;

  Rx<bool> parkingRow = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputController1.dispose();
    inputController2.dispose();
    inputController3.dispose();
    priceController.dispose();
    priceController1.dispose();
    inputController4.dispose();
    inputController5.dispose();
    inputController6.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in profileinformationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileinformationModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in profileinformationModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileinformationModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element
        in profileinformationModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileinformationModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element
        in profileinformationModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileinformationModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    for (var element
        in profileinformationModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profileinformationModelObj.value.dropdownItemList4.refresh();
  }
}
