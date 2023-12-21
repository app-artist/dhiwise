import 'package:dndy_s_application2/presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import 'package:dndy_s_application2/presentation/iphone_14_15_pro_max_one_screen/binding/iphone_14_15_pro_max_one_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone1415ProMaxOneScreen,
      page: () => Iphone1415ProMaxOneScreen(),
      bindings: [
        Iphone1415ProMaxOneBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone1415ProMaxOneScreen(),
      bindings: [
        Iphone1415ProMaxOneBinding(),
      ],
    )
  ];
}
