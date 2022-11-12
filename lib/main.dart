import 'package:ck_front_tool_dart/app_init.dart';
import 'package:ck_front_tool_dart/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() {
  Hive.init("db/db.hive");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      // builder: AppInit.builder(),
      getPages: AppRouter.routers,
      initialRoute: AppRouter.pageHome,
    );
  }
}