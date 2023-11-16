import 'package:date_picker_timeline/date_picker_widget.dart';

import '../../widgets/custom_icon_button.dart';
import '../home_page/widgets/homeafterselected_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/homeafterselected_item_model.dart';
import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_title_edittext.dart';
import 'package:abdulla_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdulla_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:abdulla_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.location_on_outlined,color: Colors.black,size: 35,),
            backgroundColor: Colors.white,
            onPressed: (){}

        ),
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: [
              _buildButton2022526(),
              SizedBox(height: 10.v),
              _buildFrame(),
              SizedBox(height: 10.v),
              _buildHomeAfterSelected(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleEdittext(
        margin: EdgeInsets.only(left: 24.h),
        hintText: "lbl".tr,
        controller: controller.whereDoYouWorkController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilterIcon,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 9.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.fromLTRB(10.h, 12.v, 39.h, 3.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildButton2022526() {
    return CustomElevatedButton(
      text: "lbl_2022_5_26".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(left:10.h,right: 10.h),
      child: Container(

        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DatePicker(
                DateTime.now(),

                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.amberAccent,
                selectedTextColor: Colors.white,
                locale: 'ja_JP',
                onDateChange: (date) {
                  // New date selected
                  // setState(() {
                  //   _selectedValue = date;
                  // });
                },
              ),
            ],
          ),
        ),

        // child: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   physics: BouncingScrollPhysics(),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       _buildColumn(),
        //       Padding(
        //         padding: EdgeInsets.only(left: 6.h),
        //         child: _buildColumn(),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 6.h),
        //         child: _buildColumn(),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 6.h),
        //         child: _buildColumn(),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(
        //           top: 9.v,
        //           bottom: 6.v,
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Padding(
        //               padding: EdgeInsets.only(left: 1.h),
        //               child: Text(
        //                 "lbl6".tr,
        //                 style: theme.textTheme.titleMedium,
        //               ),
        //             ),
        //             Align(
        //               alignment: Alignment.center,
        //               child: Text(
        //                 "lbl_30".tr,
        //                 style: theme.textTheme.titleMedium,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       // Container(
        //       //   decoration: AppDecoration.fillGray.copyWith(
        //       //     borderRadius: BorderRadiusStyle.roundedBorder9,
        //       //   ),
        //       //   child: Row(
        //       //     mainAxisAlignment: MainAxisAlignment.end,
        //       //     children: [
        //       //       Padding(
        //       //         padding: EdgeInsets.only(
        //       //           top: 9.v,
        //       //           bottom: 6.v,
        //       //         ),
        //       //         child: Column(
        //       //           crossAxisAlignment: CrossAxisAlignment.start,
        //       //           children: [
        //       //             Padding(
        //       //               padding: EdgeInsets.only(left: 1.h),
        //       //               child: Text(
        //       //                 "lbl6".tr,
        //       //                 style: theme.textTheme.titleMedium,
        //       //               ),
        //       //             ),
        //       //             Align(
        //       //               alignment: Alignment.center,
        //       //               child: Text(
        //       //                 "lbl_30".tr,
        //       //                 style: theme.textTheme.titleMedium,
        //       //               ),
        //       //             ),
        //       //           ],
        //       //         ),
        //       //       ),
        //       //       // Container(
        //       //       //   height: 67.v,
        //       //       //   width: 44.h,
        //       //       //   margin: EdgeInsets.only(left: 117.h),
        //       //       //   decoration: BoxDecoration(
        //       //       //     color: appTheme.gray50,
        //       //       //     borderRadius: BorderRadius.circular(
        //       //       //       9.h,
        //       //       //     ),
        //       //       //   ),
        //       //       // ),
        //       //     ],
        //       //   ),
        //       //   width: double.infinity,
        //       // ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 6.h),
        //         child: _buildColumn(),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 6.h),
        //         child: _buildColumn(),
        //       ),
        //       Container(
        //         height: 67.v,
        //         width: 1.h,
        //         margin: EdgeInsets.only(left: 6.h),
        //       ),
        //     ],
        //   ),
        // ),
      ),

    );
  }

  /// Section Widget
  Widget _buildHomeAfterSelected() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 17.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: controller
                .homeModelObj.value.homeafterselectedItemList.value.length,
            itemBuilder: (context, index) {
              HomeafterselectedItemModel model = controller
                  .homeModelObj.value.homeafterselectedItemList.value[index];
              return HomeafterselectedItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "lbl3".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 1.v),
          Text(
            "lbl_27".tr,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
  Widget _buildThirtyTwo({
    required String addressExample,
    required String widget,
    required String widget1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
              children: [
                Text(
                  addressExample,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray900,
                  ),
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.blueGray900,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Text(
                  widget1,
                  style: CustomTextStyles.bodySmallBluegray900.copyWith(
                    color: appTheme.blueGray900.withOpacity(0.35),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 49.h,
            top: 26.v,
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
    );
  }
}
