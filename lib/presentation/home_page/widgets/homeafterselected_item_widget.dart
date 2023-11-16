
import 'package:abdulla_s_application1/presentation/stampdetails_screen/stampdetails_screen.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/home_controller.dart';
import '../models/homeafterselected_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeafterselectedItemWidget extends StatelessWidget {
  HomeafterselectedItemWidget(
    this.homeafterselectedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeafterselectedItemModel homeafterselectedItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     height: 450.v,
  //     width: 330.h,
  //     child: Stack(
  //       alignment: Alignment.topLeft,
  //       children: [
  //         Align(
  //           alignment: Alignment.center,
  //           child: Container(
  //             margin: EdgeInsets.only(left: 5.h),
  //             decoration: AppDecoration.outlineBlueGray.copyWith(
  //               borderRadius: BorderRadiusStyle.roundedBorder15,
  //             ),
  //
  //           ),
  //         ),
  //         Align(
  //           alignment: Alignment.topLeft,
  //           child: Container(
  //             width: 74.h,
  //             margin: EdgeInsets.only(top: 159.v),
  //             padding: EdgeInsets.symmetric(
  //               horizontal: 17.h,
  //               vertical: 2.v,
  //             ),
  //             decoration: AppDecoration.fillRedA.copyWith(
  //               borderRadius: BorderRadiusStyle.roundedBorder2,
  //             ),
  //             child: Obx(
  //               () => Text(
  //                 homeafterselectedItemModelObj.widget2!.value,
  //                 style: CustomTextStyles.labelMediumOnPrimaryContainer,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.v,
      width: 330.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          InkWell(
            onTap: (){
              Get.to(StampdetailsScreen());
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 5.h),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Obx(
                            () => CustomImageView(
                          imagePath: homeafterselectedItemModelObj.image!.value,
                          height: 186.v,
                          width: 325.h,
                          radius: BorderRadius.vertical(
                            top: Radius.circular(15.h),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Container(
                      width: 285.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 19.h,
                      ),
                      child: Obx(
                            () => Text(
                          homeafterselectedItemModelObj.partTimeJobA!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.38,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        right: 14.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomElevatedButton(
                            height: 25.v,
                            width: 130.h,
                            text: "lbl9".tr,
                            margin: EdgeInsets.only(top: 1.v),
                            buttonTextStyle: theme.textTheme.labelMedium!,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Obx(
                                  () => Text(
                                homeafterselectedItemModelObj.price!.value,
                                style: CustomTextStyles.titleMedium16_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Obx(
                              () => Text(
                            homeafterselectedItemModelObj.mmDdDayOfTh!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        right: 12.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Column(
                                children: [
                                  Obx(
                                        () => Text(
                                      homeafterselectedItemModelObj
                                          .addressExample!.value,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Obx(
                                          () => Text(
                                        homeafterselectedItemModelObj
                                            .widget!.value,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4.v),
                                  Obx(
                                        () => Text(
                                      homeafterselectedItemModelObj
                                          .widget1!.value,
                                      style:
                                      CustomTextStyles.bodySmallBluegray900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 49.h,
                              top: 27.v,
                            ),
                            child: CustomIconButton(
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              padding: EdgeInsets.all(1.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgShapesHeart,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 74.h,
              margin: EdgeInsets.only(top: 159.v),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Obx(
                    () => Text(
                  homeafterselectedItemModelObj.widget2!.value,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

