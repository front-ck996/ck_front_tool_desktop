import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:ck_front_tool_dart/app_router/app_router.dart';

class AppRouterMenuItem {
  String routeName;
  String routePath;
  List<AppRouterMenuItem>? children;
  bool isExpanded = false;

  AppRouterMenuItem({required this.routeName, required this.routePath, this.children});
}



class AppRouteMenu extends StatefulWidget {
  Function? onPush;
  AppRouteMenu({Key? key, this.onPush}) : super(key: key);

  @override
  State<AppRouteMenu> createState() => _AppRouteMenuState();
}

class _AppRouteMenuState extends State<AppRouteMenu> {
  List<AppRouterMenuItem> pages = [
    AppRouterMenuItem(routeName: "基本工具", routePath: "",
      children: [
        AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
        AppRouterMenuItem(routeName: "查找整个磁盘大文件", routePath: AppRouter.pageWalkDir),
      ]
    ),
    AppRouterMenuItem(routeName: "便捷开发", routePath: "",
        children: [
          AppRouterMenuItem(routeName: "Mock&&WatchUrl", routePath: AppRouter.pageMockAndWatchUrl),
          AppRouterMenuItem(routeName: "mysql8.0.23社区版", routePath: AppRouter.pageSmallMysql),
        ]
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Column(children: getMenuWidget(pages),);
  }

   List<ExpansionPanelList> getMenuWidget(List<AppRouterMenuItem> tree){

   List<ExpansionPanelList> wList = [];
    if(tree.isNotEmpty){

      for (var index = 0; index < tree.length; index++) {
        AppRouterMenuItem element = tree[index];
        // 没有子集
        if(element.children == null || element.children!.isEmpty){

        }
        // 有子集
        else{

          List<Widget> cList = element.children!.map((AppRouterMenuItem  e) => ListTile(
            title: Text(e.routeName),
            onTap: (){
              Get.toNamed(e.routePath);
              if(widget.onPush != null){
                widget.onPush!(e);
              }
            },
          )).toList();


          wList.add(ExpansionPanelList(
            children: [
              ExpansionPanel(
                  isExpanded: element.isExpanded,
                  canTapOnHeader: true,
                  headerBuilder: (BuildContext context, bool isExpanded){
                    return ListTile(
                      title: Text(element.routeName),
                    );
                  },
                  body: Column(
                    children: cList,
                  )
              ),
            ],
            expansionCallback:(int panelIndex, bool isExpanded){
              element.isExpanded = !element.isExpanded;
              setState(() {});
            }
          ));
        }
      }
    }
    return wList;
  }
}
