import 'package:ck_front_tool_dart/widget/app_colors.dart';
import 'package:ck_front_tool_dart/widget/app_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppScaffold extends StatelessWidget {
  final Widget body;

  final appLogic = Get.put(AppLogic());
  AppScaffold({Key? key, required this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: appLogic.stateKey,
        appBar: AppBar(title: Obx( () => Text(appLogic.appTitle.value)),),
        drawer: Drawer(
          elevation:32,
          child: _fixedDrawer(),
        ),
        body: _body(),
    );
  }
  Widget _fixedDrawer(){
    return Stack(
    );
  }
  Widget _body(){
    return body;
  }
}
