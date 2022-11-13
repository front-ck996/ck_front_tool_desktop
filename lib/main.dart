import 'package:ck_front_tool_dart/app_router/app_router.dart';
import 'package:ck_front_tool_dart/go_script/go_script.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

void main() {
  Hive.init("db/db.hive");
  GoScript.init();
  GoScript.startWebsocket();
  // UToast.closeLoading();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(
        toastBuilder: (msg) => UToastParse(msg: msg)
      ),
      getPages: AppRouter.routers,
      defaultTransition: Transition.leftToRight,
      initialRoute: AppRouter.pageHome,
    );
  }
}