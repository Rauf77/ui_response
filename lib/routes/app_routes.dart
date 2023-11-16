import 'package:abdulla_s_application1/presentation/bottomnavigation_screen/bottomnavigation_screen.dart';
import 'package:abdulla_s_application1/presentation/bottomnavigation_screen/binding/bottomnavigation_binding.dart';
import 'package:abdulla_s_application1/presentation/stampdetails_screen/stampdetails_screen.dart';
import 'package:abdulla_s_application1/presentation/stampdetails_screen/binding/stampdetails_binding.dart';
import 'package:abdulla_s_application1/presentation/profileinformation_screen/profileinformation_screen.dart';
import 'package:abdulla_s_application1/presentation/profileinformation_screen/binding/profileinformation_binding.dart';
import 'package:abdulla_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:abdulla_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String bottomnavigationScreen = '/bottomnavigation_screen';

  static const String stampdetailsScreen = '/stampdetails_screen';

  static const String profileinformationScreen = '/profileinformation_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: bottomnavigationScreen,
      page: () => BottomnavigationScreen(),
      bindings: [
        BottomnavigationBinding(),
      ],
    ),
    GetPage(
      name: stampdetailsScreen,
      page: () => StampdetailsScreen(),
      bindings: [
        StampdetailsBinding(),
      ],
    ),
    GetPage(
      name: profileinformationScreen,
      page: () => ProfileinformationScreen(),
      bindings: [
        ProfileinformationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => BottomnavigationScreen(),
      bindings: [
        BottomnavigationBinding(),
      ],
    )
  ];
}
