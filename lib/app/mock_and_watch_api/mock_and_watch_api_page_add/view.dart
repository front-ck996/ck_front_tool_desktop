import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:ck_front_tool_dart/utils/u_store.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MockAndWatchApiPageAddComponent extends StatelessWidget {
  const MockAndWatchApiPageAddComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MockAndWatchApiPageAddLogic());
    ModelMock mockData = ModelMock();
    return FloatingActionButton(onPressed: (){
      SmartDialog.show(clickMaskDismiss: false,builder: (BuildContext context){
        return FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'mock任务标题'
                        ),
                        onChanged: (value){
                          mockData.title = value;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: '前置标记'
                        ),
                        onChanged: (value){
                          mockData.firstDomain = value;
                        },
                      )
                    ],
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () async {
                      await logic.submit(mockData);
                      mockData = ModelMock();
                      SmartDialog.dismiss();
                    }, child: Text('提交')),
                    TextButton(onPressed: (){
                      SmartDialog.dismiss();
                    }, child: Text('关闭'))
                  ],
                )
              ],
            ),
          ),
        );
      });
    },child: const Icon(Icons.add),);
  }
}
