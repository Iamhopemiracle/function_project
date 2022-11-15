import 'package:flutter/cupertino.dart';
import 'package:function_project/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List functionList = ['SelectionArea 可复制文本', '自动填充页面'];
  List routesList = [Routes.SELECTION_AREA, Routes.AUTOCOMPLETE];
  gotoNextPage(int index) {
    Get.toNamed(routesList[index], arguments: functionList[index]);
  }
}
