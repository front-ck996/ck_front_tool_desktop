import 'dart:convert';

import 'package:ck_front_tool_dart/go_script/go_script.dart';
import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:ck_front_tool_dart/utils/raw_fithubusercontent_cpm_ips.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
import 'package:ck_front_tool_dart/widget/app_logic.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());
    return AppScaffold(
        body: Column(
          children: [
            TextButton(onPressed: (){
              final appLogic = Get.find<AppLogic>();
              appLogic.openDrawer();
            }, child: Text("text dialog")),
           ElevatedButton(onPressed: (){
             GoScript.startWebsocket();
             // GoScript.getServePort();
             UToast.show(GoScript.getServePort().toString());
           }, child: Text('测试获取端口')),


            ElevatedButton(onPressed: () async {
              LocationFileHost.updateRowGithubComAndWriteHosts();
              // updateRowGithubComAndWriteHosts();
              // UToast.openLoading();
              //
              // try{
              //   Future.delayed(const Duration(seconds: 1),(){
              //     RawGithubusercontentComIps data = GoScript.getRawGithubusercontentComIps();
              //     print(data.ips,);
              //     print(data.isok,);
              //     UToast.closeLoading();
              //   });
              // }catch(e){
              //   UToast.closeLoading();
              // }

            }, child: Text('测试 row ips ')),
           // AppRouteMenu()
          ],
        ),
    );
  }
}
