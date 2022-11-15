import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectionAreaController extends GetxController {
  ///文本样式
  TextSelectionControls? controls = materialTextSelectionControls;

  ///文本内容
  String text = '星座：水瓶\n'
      '贵人方位：东南方向\n'
      '贵人星座：双子座\n'
      '幸运数字：9\n'
      '幸运颜色：牡蛎白\n'
      '爱情运势：容易得到伴侣的支持与照顾，让你感到幸福；恋爱中的人别整日黏在一起，容易起矛盾。\n'
      '财富运势：适合用最简单不用脑筋的方式来理财，太复杂多变化的理财工具会造成无谓的焦虑。\n'
      '事业运势：运势不错，能够充分发挥活力，若心中有计划不妨着手去做，会有好结果喔！\n'
      '整体运势：今天很适合努力表现自己，与人竞争会让你脱颖而出。口才佳，说话条理分明，见解独到，很容易受到他人的认同，名声获得彰显。财运一般，不宜冒险投资，可考虑小本买卖，会有不错的收获。\n'
      '提示：运势平顺，有利展现才华。';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  ///获取平台，设置选择文本样式
  getPlatform(context) {
    print('${Theme.of(context).platform}');
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        controls = materialTextSelectionControls;
        break;
      case TargetPlatform.iOS:
        controls = cupertinoTextSelectionControls;
        break;
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        controls = desktopTextSelectionControls;
        break;
      case TargetPlatform.macOS:
        controls = cupertinoDesktopTextSelectionControls;
        break;
    }
  }
}
