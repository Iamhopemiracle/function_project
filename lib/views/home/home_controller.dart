import 'package:flutter/cupertino.dart';
import 'package:function_project/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List functionList = ['SelectionArea 可复制文本'];

  gotoNextPage(int index) {
    Get.toNamed(Routes.SELECTION_AREA);
  }
}
