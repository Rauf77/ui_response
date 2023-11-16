import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 241.h,
        controller: controller,
        hintText: "lbl".tr,
        hintStyle: CustomTextStyles.labelLarge12,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray10001,
      ),
    );
  }
}
