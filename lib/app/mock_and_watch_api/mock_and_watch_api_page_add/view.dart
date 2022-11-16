import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MockAndWatchApiPageAddComponent extends StatelessWidget {
  const MockAndWatchApiPageAddComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MockAndWatchApiPageAddLogic());

    return FloatingActionButton(onPressed: (){
      SmartDialog.show(builder: (BuildContext context){
        return Form(child: Column(
          children: [
            TextFormField(
              initialValue: "hello",
            )
          ],
        ));
      });
    },child: const Icon(Icons.add),);
  }
}
