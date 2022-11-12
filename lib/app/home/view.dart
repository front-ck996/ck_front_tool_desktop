import 'package:ck_front_tool_dart/widget/app_logic.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
            }, child: Text("text dialog"))
          ],
        ),
    );
  }
}
