import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/editable.dart';
import 'package:get/get.dart';

import 'selection_area_controller.dart';

///文本复制  继承 TextSelectionControls    iOS显示全选  继承的代理方法必须要实现 可自定义
class SelectionAreaPage extends StatelessWidget
    implements TextSelectionControls {
  final controller = Get.put(SelectionAreaController());

  @override
  Widget build(BuildContext context) {
    controller.getPlatform(context);
    var arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arg),
        centerTitle: true,
      ),
      body: SelectionArea(
        focusNode: FocusNode(),
        selectionControls: controller.controls!,
        child: Text(controller.text),
      ),
    );
  }

  ///下面是继承TextSelectionControls的方法，必须实现的方法
  ///如果要修改对应的功能，可以在对应的方法里修改

  ///构建给定type选择句柄。
  @override
  Widget buildHandle(
      BuildContext context, TextSelectionHandleType type, double textLineHeight,
      [VoidCallback? onTap]) {
    // TODO: implement buildHandle
    throw UnimplementedError();
  }

  ///在文本选择附近构建工具栏。
  @override
  Widget buildToolbar(
      BuildContext context,
      Rect globalEditableRegion,
      double textLineHeight,
      Offset position,
      List<TextSelectionPoint> endpoints,
      TextSelectionDelegate delegate,
      ClipboardStatusNotifier? clipboardStatus,
      Offset? lastSecondaryTapDownPosition) {
    // TODO: implement buildToolbar
    throw UnimplementedError();
  }

  ///复制
  ///给定delegate管理的文本字段的当前选择是否可以复制到剪贴板。
  @override
  bool canCopy(TextSelectionDelegate delegate) {
    // TODO: implement canCopy
    throw UnimplementedError();
  }

  ///剪贴
  ///是否可以将给定delegate管理的文本字段的当前选择从文本字段中删除并放入剪贴板。
  @override
  bool canCut(TextSelectionDelegate delegate) {
    // TODO: implement canCut
    throw UnimplementedError();
  }

  ///是否支持从剪贴板粘贴。
  @override
  bool canPaste(TextSelectionDelegate delegate) {
    // TODO: implement canPaste
    throw UnimplementedError();
  }

  ///全选
  ///设置true iOS复制界面显示全选按钮
  @override
  bool canSelectAll(TextSelectionDelegate delegate) {
    return true;
    // throw UnimplementedError();
  }

  ///获取手柄相对于自身的锚点。锚点是与文本中特定点对齐的点。手柄通常在视觉上“指向”该位置。
  @override
  Offset getHandleAnchor(TextSelectionHandleType type, double textLineHeight) {
    // TODO: implement getHandleAnchor
    throw UnimplementedError();
  }

  ///返回选择句柄的大小。
  ///双文本行高度
  @override
  Size getHandleSize(double textLineHeight) {
    // TODO: implement getHandleSize
    throw UnimplementedError();
  }

  @override
  void handleCopy(TextSelectionDelegate delegate,
      [ClipboardStatusNotifier? clipboardStatus]) {
    // TODO: implement handleCopy
  }

  @override
  void handleCut(TextSelectionDelegate delegate,
      [ClipboardStatusNotifier? clipboardStatus]) {
    // TODO: implement handleCut
  }

  @override
  Future<void> handlePaste(TextSelectionDelegate delegate) {
    // TODO: implement handlePaste
    throw UnimplementedError();
  }

  @override
  void handleSelectAll(TextSelectionDelegate delegate) {
    // TODO: implement handleSelectAll
  }
}
