import '../profileinformation_screen/widgets/framelist1_item_widget.dart';
import '../profileinformation_screen/widgets/framelist_item_widget.dart';
import '../profileinformation_screen/widgets/photolist_item_widget.dart';
import 'controller/profileinformation_controller.dart';
import 'models/framelist1_item_model.dart';
import 'models/framelist_item_model.dart';
import 'models/photolist_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:abdulla_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdulla_s_application1/widgets/custom_checkbox_button.dart';
import 'package:abdulla_s_application1/widgets/custom_drop_down.dart';
import 'package:abdulla_s_application1/widgets/custom_elevated_button.dart';
import 'package:abdulla_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileinformationScreen extends GetWidget<ProfileinformationController> {
   ProfileinformationScreen({Key? key})
      : super(
          key: key,
        );
  final ProfileinformationController profileController = Get.find();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 19.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStoreNameColumn(),
                        SizedBox(height: 15.v),
                        _buildRepresentativeNameColumn(),
                        SizedBox(height: 15.v),
                        _buildStorePhoneNumberColumn(),
                        SizedBox(height: 15.v),
                        _buildStoreAddressColumn(),
                        SizedBox(height: 16.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSnazzyImage1,
                          height: 219.v,
                          width: 335.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl32".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                              TextSpan(
                                text: "lbl_33".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildPhotoList(),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl34".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildFrameList(),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl35".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildFrameList1(),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl36".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style:
                                    CustomTextStyles.bodyMediumErrorContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 44.h),
                          child: Row(
                            children: [
                              _buildThree(
                                userImage: ImageConstant.img2021112196x91,
                                closeIcon: ImageConstant.imgCloseGray300,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildThree(
                                  userImage: ImageConstant.img2021112296x91,
                                  closeIcon: ImageConstant.imgCloseGray300,
                                ),
                              ),
                              Container(
                                height: 96.v,
                                width: 91.h,
                                margin: EdgeInsets.only(left: 9.h),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img202111221,
                                      height: 96.v,
                                      width: 91.h,
                                      radius: BorderRadius.circular(
                                        6.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseGray3009x9,
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 11.v,
                                        right: 10.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl38".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              CustomDropDown(
                                width: 124.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                  ),
                                ),
                                hintText: "lbl_10_00".tr,
                                items: controller.profileinformationModelObj
                                    .value.dropdownItemList!.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl39".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: CustomDropDown(
                                  width: 124.h,
                                  icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.h, 6.v, 20.h, 6.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                    ),
                                  ),
                                  hintText: "lbl_20_00".tr,
                                  items: controller.profileinformationModelObj
                                      .value.dropdownItemList1!.value,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl41".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              CustomDropDown(
                                width: 124.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                  ),
                                ),
                                hintText: "lbl_11_00".tr,
                                items: controller.profileinformationModelObj
                                    .value.dropdownItemList2!.value,
                                onChanged: (value) {
                                  controller.onSelected2(value);
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl39".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: CustomDropDown(
                                  width: 124.h,
                                  icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.h, 6.v, 20.h, 6.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 26.adaptSize,
                                      width: 26.adaptSize,
                                    ),
                                  ),
                                  hintText: "lbl_15_00".tr,
                                  items: controller.profileinformationModelObj
                                      .value.dropdownItemList3!.value,
                                  onChanged: (value) {
                                    controller.onSelected3(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl43".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(right: 89.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 20.v,
                                width: 17.h,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl6".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 20.v,
                                width: 17.h,
                                margin: EdgeInsets.only(
                                  left: 28.h,
                                  top: 2.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl7".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 20.v,
                                width: 17.h,
                                margin: EdgeInsets.only(
                                  left: 26.h,
                                  top: 2.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl8".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 20.v,
                                width: 17.h,
                                margin: EdgeInsets.only(
                                  left: 26.h,
                                  top: 2.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl2".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(right: 86.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseSecondarycontainer,
                                height: 20.v,
                                width: 17.h,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl3".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup149,
                                height: 19.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                  left: 26.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl4".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup149,
                                height: 19.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                  left: 26.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "lbl5".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup149,
                                height: 19.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                  left: 28.h,
                                  top: 3.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl44".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl46".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        CustomDropDown(
                          width: 194.h,
                          icon: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 6.v,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 26.adaptSize,
                              width: 26.adaptSize,
                            ),
                          ),
                          hintText: "lbl47".tr,
                          items: controller.profileinformationModelObj.value
                              .dropdownItemList4!.value,
                          onChanged: (value) {
                            controller.onSelected4(value);
                          },
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl49".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              _buildPrice(),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl39".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              _buildPrice1(),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildCatchCopyColumn(),
                        SizedBox(height: 15.v),
                        _buildNumberOfSeatsColumn(),
                        SizedBox(height: 23.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl55".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.titleSmallOrange900_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(right: 220.h),
                          child: Row(
                            children: [
                              Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 3.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 6.v,
                                ),
                                decoration:
                                    AppDecoration.outlineDeepOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgTwitter,
                                  height: 6.v,
                                  width: 8.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl56".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              _buildSmokingSeatRow(),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl59".tr,
                                style: CustomTextStyles.bodyMediumGray800,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.bodyMediumOrange900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(right: 220.h),
                          child: Row(
                            children: [
                              Container(
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 3.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 6.v,
                                ),
                                decoration:
                                    AppDecoration.outlineDeepOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgTwitter,
                                  height: 6.v,
                                  width: 8.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "lbl56".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              _buildParkingRow(),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl61".tr,
                                style: CustomTextStyles.bodyMediumGray800,
                              ),
                              TextSpan(
                                text: "lbl24".tr,
                                style: CustomTextStyles.bodyMediumOrange900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            Container(
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 3.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 6.v,
                              ),
                              decoration:
                                  AppDecoration.outlineDeepOrange.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder5,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgTwitter,
                                height: 6.v,
                                width: 8.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl62".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgCloseSecondarycontainer,
                              height: 20.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                left: 26.h,
                                top: 3.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl57".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(right: 43.h),
                          child: Row(
                            children: [
                              _buildThree(
                                userImage: ImageConstant.img20211107,
                                closeIcon: ImageConstant.imgCloseGray30014x14,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildThree(
                                  userImage: ImageConstant.img2021110791x91,
                                  closeIcon: ImageConstant.imgCloseGray30014x14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildThree(
                                  userImage: ImageConstant.img202111071,
                                  closeIcon: ImageConstant.imgCloseGray30014x14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildEditStoreProfileColumn(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildTf(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgInfo,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 13.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl21".tr,
      ),
      actions: [
        Container(
          height: 28.v,
          width: 31.440002.h,
          margin: EdgeInsets.fromLTRB(21.h, 15.v, 21.h, 10.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationsNone,
                height: 28.adaptSize,
                width: 28.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(right: 3.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    bottom: 12.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: Text(
                    "lbl_99".tr,
                    style: CustomTextStyles.notoSansJPOnPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildInput() {
    return CustomTextFormField(
      controller: controller.inputController,
      hintText: "lbl_mer".tr,
      hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildStoreNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl23".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput(),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput1() {
    return CustomTextFormField(
      controller: controller.inputController1,
      hintText: "lbl27".tr,
    );
  }

  /// Section Widget
  Widget _buildRepresentativeNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl26".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput1(),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput2() {
    return CustomTextFormField(
      controller: controller.inputController2,
      hintText: "lbl_123_4567_8910".tr,
    );
  }

  /// Section Widget
  Widget _buildStorePhoneNumberColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl29".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput2(),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput3() {
    return CustomTextFormField(
      controller: controller.inputController3,
      hintText: "msg_791_13".tr,
    );
  }

  /// Section Widget
  Widget _buildStoreAddressColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl31".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput3(),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhotoList() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller
              .profileinformationModelObj.value.photolistItemList.value.length,
          itemBuilder: (context, index) {
            PhotolistItemModel model = controller.profileinformationModelObj
                .value.photolistItemList.value[index];
            return PhotolistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameList() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller
              .profileinformationModelObj.value.framelistItemList.value.length,
          itemBuilder: (context, index) {
            FramelistItemModel model = controller.profileinformationModelObj
                .value.framelistItemList.value[index];
            return FramelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameList1() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 7.h,
            );
          },
          itemCount: controller
              .profileinformationModelObj.value.framelist1ItemList.value.length,
          itemBuilder: (context, index) {
            Framelist1ItemModel model = controller.profileinformationModelObj
                .value.framelist1ItemList.value[index];
            return Framelist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return CustomTextFormField(
      width: 124.h,
      controller: controller.priceController,
      hintText: "lbl_1_0002".tr,
      hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildPrice1() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomTextFormField(
        width: 124.h,
        controller: controller.priceController1,
        hintText: "lbl_2_0002".tr,
        hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildInput4() {
    return CustomTextFormField(
      controller: controller.inputController4,
      hintText: "msg3".tr,
      hintStyle: CustomTextStyles.bodyMedium15,
    );
  }

  /// Section Widget
  Widget _buildCatchCopyColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl51".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput4(),
      ],
    );
  }

  /// Section Widget
  Widget _buildInput5() {
    return CustomTextFormField(
      controller: controller.inputController5,
      hintText: "lbl_402".tr,
      hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildNumberOfSeatsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl53".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput5(),
      ],
    );
  }

  /// Section Widget
  Widget _buildSmokingSeatRow() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl57".tr,
        value: controller.smokingSeatRow.value,
        onChange: (value) {
          controller.smokingSeatRow.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildParkingRow() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl57".tr,
        value: controller.parkingRow.value,
        onChange: (value) {
          controller.parkingRow.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInput6() {
    return CustomTextFormField(
      controller: controller.inputController6,
      hintText: "msg4".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEditStoreProfileColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl64".tr,
                style: theme.textTheme.titleSmall,
              ),
              TextSpan(
                text: "lbl24".tr,
                style: CustomTextStyles.titleSmallOrange900_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        _buildInput6(),
      ],
    );
  }

  /// Section Widget
  Widget _buildTf() {
    return Opacity(
      opacity: 0.5,
      child: CustomElevatedButton(
        height: 46.v,
        text: "lbl65".tr,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 54.v,
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientDeepOrangeToDeepOrangeDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
      ),
    );
  }

  /// Common widget
  Widget _buildThree({
    required String userImage,
    required String closeIcon,
  }) {
    return SizedBox(
      height: 96.v,
      width: 91.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 96.v,
            width: 91.h,
            radius: BorderRadius.circular(
              6.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: closeIcon,
            height: 15.v,
            width: 14.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 9.h,
            ),
          ),
        ],
      ),
    );
  }
}
