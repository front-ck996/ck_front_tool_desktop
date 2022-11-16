
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
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
  const MockAndWatchApiPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "MockAndWatchUrl",
      body: AppBasicContainer(
        builder: (BuildContext context,BoxConstraints constraints, AsyncSnapshot snapshot){
          return Container(padding: const EdgeInsets.all(20), child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  MockAndWatchApiPageAddComponent(),
                ],
              )
            ],
          ));
       }
      )
    );
  }
}