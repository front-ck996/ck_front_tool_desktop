import 'package:ck_front_tool_dart/app_router/app_route_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

// import 'package:ck_front_tool_dart/ffi_binary/go_script.dart';
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
             // GoScript.startWebsocket();
             // UToast.show(GoScript.getServePort().toString());
           }, child: Text('测试获取端口')),


            ElevatedButton(onPressed: () async {
              LocationFileHost.updateRowGithubComAndWriteHosts();

            }, child: Text('测试 row ips ')),

            ElevatedButton(onPressed: () async {
              // LocationFileHost.updateRowGithubComAndWriteHosts();
              print(Platform.environment);
            }, child: Text('测试 row ips ')),

            ExpansionPanelList(
              children: [
                ExpansionPanel(isExpanded: true,headerBuilder:(BuildContext context, bool isExpanded){
                      return ListTile(
                      title: Text('hello'),
                      );
                      },
                    body: Container(

                    ))
              ],
            ),

            // AppRouteMenu(onPush: (e){
            //   // stateKey.currentState!.openEndDrawer();
            // },),
          ],
        ),
    );
  }
}
