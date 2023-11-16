

import 'package:abdulla_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';


// ignore: must_be_immutable
class StampdetailsItemWidget extends StatelessWidget {
  const StampdetailsItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_2021_11_17".tr,
                style: CustomTextStyles.bodySmallGray40001,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "スタンプを獲得しました。",
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      "1 個",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              )

            ],
          ),
        );

  }
}
