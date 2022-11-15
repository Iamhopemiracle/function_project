import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'intl_en.dart';
import 'intl_zh.dart';

/// 多语言适配
///
/// 获取时区 适配对应的语言
class TranslationService extends Translations {
  //get方法获取时区
  static Locale? get locale => Get.deviceLocale;
  //回调语言
  static const fallbackLocal = Locale('zh', 'CN');

  @override
  ///语言集合
  Map<String, Map<String, String>> get keys => {
    'en_US': en_US,
    'zh_CN': zh_CN,
  };
}