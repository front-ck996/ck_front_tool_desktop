import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

import 'package:ck_front_tool_dart/go_script/go_script.dart';
import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());
    return AppScaffold(
        title: '专属于前端工程师的工具箱',
        body: Column(
          children: [
            TextButton(onPressed: (){
            }, child: Text("text dialog")),
           ElevatedButton(onPressed: (){
             GoScript.startWebsocket();
             UToast.show(GoScript.getServePort().toString());
           }, child: Text('测试获取端口')),


            ElevatedButton(onPressed: () async {
              LocationFileHost.updateRowGithubComAndWriteHosts();

            }, child: Text('测试 row ips ')),

            ElevatedButton(onPressed: () async {
              // LocationFileHost.updateRowGithubComAndWriteHosts();
              print(Platform.environment);
            }, child: Text('测试 row ips ')),

           // AppRouteMenu()
          ],
        ),
    );
  }
}
