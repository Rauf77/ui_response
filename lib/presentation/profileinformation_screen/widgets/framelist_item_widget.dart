import '../controller/profileinformation_controller.dart';
import '../models/framelist_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramelistItemWidget extends StatelessWidget {
  FramelistItemWidget(
    this.framelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramelistItemModel framelistItemModelObj;

  var controller = Get.find<ProfileinformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 91.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgInput91x91,
        height: 91.adaptSize,
        width: 91.adaptSize,
        radius: BorderRadius.circular(
          5.h,
        ),
      ),
    );
  }
}
