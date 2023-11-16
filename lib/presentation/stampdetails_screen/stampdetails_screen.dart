import 'package:abdulla_s_application1/presentation/profileinformation_screen/profileinformation_screen.dart';

import '../stampdetails_screen/widgets/stampdetails_item_widget.dart';
import 'controller/stampdetails_controller.dart';
import 'models/stampdetails_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdulla_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class StampdetailsScreen extends GetWidget<StampdetailsController> {
  const StampdetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA100,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: ListView(
            children: [
              _buildSeventySeven(),
              SizedBox(height: 24.v),
              Container(
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL22,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 33.v),
                    _buildFrameSeventyNine(),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 36.h),
                        child: Text(
                          "lbl_2_2".tr,
                          style: CustomTextStyles.bodySmallPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl19".tr,
                        style: CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 17.v),

                    SizedBox(height: 7.v),
                    _buildStampDetails(context),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup11,
        margin: EdgeInsets.only(left: 16.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl16".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMinusCircle,
          margin: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventySeven() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_mer".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl17".tr,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_302".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 11.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl18".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyNine() {
    return Container(
      height: 199.v,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle31,
              height: 100.v,
              width: 375.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 199.v,
                      width: 317.h,


                      margin: EdgeInsets.only(left: 27.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 199.v,
                              width: 317.h,
                              decoration: BoxDecoration(
                                // color: theme.colorScheme.onPrimaryContainer,
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(
                                  14.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.black90019,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 25.v,
                                right: 20.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildCheckmark(),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage:
                                      ImageConstant.imgCheckmark,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: _buildEleven(
                                      checkmarkImage: ImageConstant
                                          .imgCheckmarkOnprimarycontainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 199.v,
                      width: 317.h,
                      // color: Colors.grey,
                      margin: EdgeInsets.only(left: 27.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 199.v,
                            width: 317.h,
                            decoration: BoxDecoration(
                              // color: theme.colorScheme.onPrimaryContainer,
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(
                                14.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black90019,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 354.h),
                child: IntrinsicWidth(
                  child: Container(
                    height: 199.v,
                    width: 317.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 23.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        _buildCheckmark1(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 133.v,
                            width: 42.h,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildCheckmark(),
                              Padding(
                                padding: EdgeInsets.only(left: 192.h),
                                child: _buildCheckmark(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60.h),
                          child: _buildCheckmark(),
                        ),
                        _buildCheckmark(),
                        Padding(
                          padding: EdgeInsets.only(right: 58.h),
                          child: _buildCheckmark(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStampDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
            context,
            index,
            ) {
          return InkWell(
            onTap: (){
              Get.to(ProfileinformationScreen());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0.v),
              child: SizedBox(
                width: 343.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray300,
                ),
              ),
            ),
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return StampdetailsItemWidget();
        },
      ),
    );
  }
}





  /// Common widget
  Widget _buildEleven({required String checkmarkImage}) {
    return SizedBox(
      height: 42.adaptSize,
      width: 42.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar3,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: checkmarkImage,
            height: 22.adaptSize,
            width: 22.adaptSize,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCheckmark() {
    return SizedBox(
      height: 42.adaptSize,
      width: 42.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar11,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkOnprimarycontainer8x12,
            height: 8.v,
            width: 12.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCheckmark1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgStar642x42,
          height: 42.adaptSize,
          width: 42.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 54.v),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar742x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar842x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar942x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          height: 42.adaptSize,
          width: 42.adaptSize,
          margin: EdgeInsets.only(
            left: 15.h,
            bottom: 54.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStar1042x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimarycontainer22x22,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

