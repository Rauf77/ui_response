import '../../../core/app_export.dart';

/// This class is used in the [homeafterselected_item_widget] screen.
class HomeafterselectedItemModel {
  HomeafterselectedItemModel({
    this.image,
    this.partTimeJobA,
    this.price,
    this.mmDdDayOfTh,
    this.addressExample,
    this.widget,
    this.widget1,
    this.widget2,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.img20220608);
    partTimeJobA = partTimeJobA ?? Rx("介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）");
    price = price ?? Rx("¥ 6,000");
    mmDdDayOfTh = mmDdDayOfTh ?? Rx("5月 31日（水）08 : 00 ~ 17 : 00");
    addressExample = addressExample ?? Rx("北海道札幌市東雲町3丁目916番地17号");
    widget = widget ?? Rx("交通費 300円");
    widget1 = widget1 ?? Rx("住宅型有料老人ホームひまわり倶楽部");
    widget2 = widget2 ?? Rx("本日まで");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? partTimeJobA;

  Rx<String>? price;

  Rx<String>? mmDdDayOfTh;

  Rx<String>? addressExample;

  Rx<String>? widget;

  Rx<String>? widget1;

  Rx<String>? widget2;

  Rx<String>? id;
}
