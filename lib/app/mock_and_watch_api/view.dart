
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {}
          });
          return AppScaffold(title: "MockAndWatchUrl",body: AppBasicContainer(builder: (BuildContext context,BoxConstraints constraints, AsyncSnapshot snapshot){
            return Column(
              children: [
                TabBar(tabs: tabs),
                Expanded(
                  child:TabBarView(
                    children: tabs.map((Tab tab) {
                      return Center(
                        child: Text(
                          '${tab.text!} Tab',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      );
                    }).toList(),
                  )
                ),
              ],
            );
          },));
        }),
      );
    }
  }