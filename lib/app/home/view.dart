import 'package:ck_front_tool_dart/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());

    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
      body: Column(
        children: [
          TextButton(onPressed: (){
            Get.toNamed(AppRouter.pageExampleStartDialog);
          }, child: Text("text dialog"))
        ],
      ),
    );
  }
}
