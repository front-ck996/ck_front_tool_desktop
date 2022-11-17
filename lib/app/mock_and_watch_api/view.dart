import 'package:ck_front_tool_dart/app/mock_and_watch_api/mock_and_watch_api_page_add/logic.dart';
import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:ck_front_tool_dart/utils/u_store.dart';
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:ck_front_tool_dart/cui/cui_tag.dart';
import 'package:ck_front_tool_dart/cui/cui_tag_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mock_and_watch_api_page_add/view.dart';

import 'logic.dart';
const List<Tab> tabs = <Tab>[
  Tab(text: 'Zeroth'),
  Tab(text: 'First'),
  Tab(text: 'Second'),
];

class MockAndWatchApiPage extends StatelessWidget{
  MockAndWatchApiPage({Key? key}) : super(key: key);
  final logic = Get.put(MockAndWatchApiLogic());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "MockAndWatchUrl",
      body: AppBasicContainer(
        builder: (BuildContext context,BoxConstraints constraints, AsyncSnapshot snapshot){
          return Container(padding: const EdgeInsets.all(20), child: Obx( () => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  MockAndWatchApiPageAddComponent(),
                ],
              ),
              CuiTag(children: _tags())
            ],
          )));
       }
      )
    );
  }
  _tags(){
    var list = <Widget>[];
    logic.mockList.forEach((ModelMock element) {
      list.add(CuiTagItem(
        title: element.title.toString(),
        onDelete: () async {
          logic.mockList.removeWhere((ModelMock s0) => s0.title == element.title);
          await UStore.addOrUpdate("mock_list", List.from(logic.mockList.value));
          var logicAdd = Get.find<MockAndWatchApiPageAddLogic>();
          logicAdd.updateHosts();
        },
        onEdit: () async {
          print('edit');
        },
      ));
    });
    return list;
  }
}