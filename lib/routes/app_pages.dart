import 'package:function_project/views/autocomplete/autocomplete_view.dart';
import 'package:function_project/views/home/home_view.dart';
import 'package:function_project/views/selection_area/selection_area_view.dart';
import 'package:get/get.dart';


//part标识符指明组成这个库的其他文件。需要注意的是，part部分一定要在import部分的后面。
part "app_routes.dart";

class AppPages {
  static final routes = [

    //主页
    GetPage(
      name: Routes.ROOT,
      page: () => HomePage(),
    ),

    //可复制文本页面
    GetPage(
      name: Routes.SELECTION_AREA,
      page: () => SelectionAreaPage(),
    ),

    //自动填充页面
    GetPage(
      name: Routes.AUTOCOMPLETE,
      page: () => AutocompletePage(),
    ),

    // GetPage(
    //   name: Routes.TEXTDETAIL,
    //   page: () => TextDetailPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.IMAGE,
    //   page: () => ImagePage(),
    // ),
    //
    // GetPage(
    //   name: Routes.IMAGEDETAIL,
    //   page: () => ImageDetailPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.JOY,
    //   page: () => HappyPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.HAPPYDETAIL,
    //   page: () => HappyDetailPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.ME,
    //   page: () => MePage(),
    // ),
    //
    // GetPage(
    //   name: Routes.ME_DETAIL,
    //   page: () => MeDetailPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.ADDRESS,
    //   page: () => AddressPage(),
    // ),
    // GetPage(
    //   name: Routes.LANGUAGE,
    //   page: () => LanguagePage(),
    // ),
    // GetPage(
    //   name: Routes.DETAIL,
    //   page: () => DetailPage(),
    // ),
    // GetPage(
    //   name: Routes.VIDEODETAIL,
    //   page: () => VideoDetailView(),
    // ),
    //
    // GetPage(
    //   name: Routes.VIDEO,
    //   page: () => VideoPage(),
    // ),
    //
    // GetPage(
    //   name: Routes.VIDEODETAILS,
    //   page: () => VideoDetailPage(),
    // ),
    // GetPage(
    //   name: Routes.TOOLS_DETAIL,
    //   page: () => ToolsDetailPage(),
    // ),
    // GetPage(
    //   name: Routes.EXPLAIN,
    //   page: () => Explain(),
    // ),
  ];
}
