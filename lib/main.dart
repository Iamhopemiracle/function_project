import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:function_project/routes/app_pages.dart';
import 'package:get/get.dart';

import 'lang/translation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //去除右上角debug标识
      debugShowCheckedModeBanner: false,
      //是否显示log
      enableLog: true,
      //路由
      //根路由
      initialRoute: Routes.ROOT,
      //配置路由
      getPages: AppPages.routes,
      //设置主题色
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      //默认跳转方式
      // defaultTransition: Transition.fade,
      //国际化
      //将会按照此处指定的语言翻译
      locale: TranslationService.locale,
      //添加一个回调语言选项，以备上面指定的语言翻译不存在
      fallbackLocale: TranslationService.fallbackLocal,
      //你的翻译
      translations: TranslationService(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CN'),
        Locale('en', 'US'),
      ],
      //标题
      title: '',
      // home: LoginPage(),
    );
  }
}
