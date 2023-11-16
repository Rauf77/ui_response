import '../controller/profileinformation_controller.dart';
import '../models/framelist1_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Framelist1ItemWidget extends StatelessWidget {
  Framelist1ItemWidget(
    this.framelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Framelist1ItemModel framelist1ItemModelObj;

  var controller = Get.find<ProfileinformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.h,
      child: Obx(
        () => CustomImageView(
          imagePath: framelist1ItemModelObj.input!.value,
          height: 91.adaptSize,
          width: 91.adaptSize,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
      ),
    );
  }
}
