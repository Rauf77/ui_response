import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavYellow80001,
        activeIcon: ImageConstant.imgNavYellow80001,
        title: "lbl14".tr,
        type: BottomBarEnum.tf,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray90024x24,
      activeIcon: ImageConstant.imgNavBlueGray90024x24,
      title: "lbl15".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavOnprimarycontainer,
      activeIcon: ImageConstant.imgNavOnprimarycontainer,
      title: "lbl11".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav,
      activeIcon: ImageConstant.imgNav,
      title: "lbl12".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray900,
      activeIcon: ImageConstant.imgNavBlueGray900,
      title: "lbl13".tr,
      type: BottomBarEnum.tf,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: theme.colorScheme.onPrimaryContainer,
        child: SizedBox(
          height: 70.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: appTheme.yellow80001,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: CustomTextStyles.labelSmallYellow80001
                                    .copyWith(
                                  color: appTheme.yellow80001,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              color: appTheme.blueGray900,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 6.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: theme.textTheme.labelSmall!.copyWith(
                                  color: appTheme.blueGray900,
                                ),
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  tf,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
