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
    AppRouterMenuItem(routeName: "basic tool", routePath: "",
      children: [
        AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
      ]
    )
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
      for (var element in tree) {
        // 没有子集
        if(element.children == null || element.children!.isEmpty){

        }
        // 有子集
        else{
          List<ExpansionPanel> cList = element.children!.map((AppRouterMenuItem  e) => ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded){
                return ListTile(
                  title: Text(element.routeName),
                );
              },
              canTapOnHeader: true,
              isExpanded: element.isExpanded,
              body:  ListTile(
                title: Text(e.routeName),
                onTap: (){
                  Get.toNamed(e.routePath);
                  if(widget.onPush != null){
                    widget.onPush!(e);
                  }

                },
              ),
             )
          ).toList();
          wList.add(ExpansionPanelList(

            children: cList,
            expansionCallback:(int panelIndex, bool isExpanded){
              pages[panelIndex].isExpanded = !pages[panelIndex].isExpanded;
              setState(() {});
            }
          ));
        }
      }
    }
    return wList;




    // var expend = tree.map((e) => false).toList();
    // return [
    //   ExpansionPanelList(
    //     expansionCallback:(int panelIndex, bool isExpanded){
    //       pages[panelIndex].isExpanded = !pages[panelIndex].isExpanded;
    //       setState((){});
    //     },
    //     children: [
    //       ExpansionPanel(
    //         isExpanded: pages[0].isExpanded,
    //         headerBuilder: (BuildContext context, bool isExpanded) {
    //           return const ListTile(
    //             title: Text('1244'),
    //           );
    //         },
    //       body: ListTile(
    //           title: Text('31531'),
    //           subtitle:
    //           const Text('To delete this panel, tap the trash can icon'),
    //           trailing: const Icon(Icons.delete),
    //           onTap: () {
    //             // setState(() {
    //             //   _data.removeWhere((Item currentItem) => item == currentItem);
    //             // });
    //           }))
    //     ],
    //   )
    // ];
  }

}













//
//
// class AppRouterMenu {
//   static List<AppRouterMenuItem> pages = [
//     AppRouterMenuItem(routeName: "basic tool", routePath: "",
//       children: [
//         AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//         // AppRouterMenuItem(routeName: "编辑本地hosts文件", routePath: AppRouter.pageEditHosts),
//       ]
//     )
//
//   ];
//   static List<ExpansionPanelList> getMenuWidget(List<AppRouterMenuItem> tree){
//     var expend = tree.map((e) => false).toList();
//     return [
//       ExpansionPanelList(
//         expansionCallback:(int panelIndex, bool isExpanded){
//           print(panelIndex);
//           print(isExpanded);
//           // isExpanded = true;
//           expend[panelIndex] = true;
//         },
//         children: [
//           ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text('1244'),
//             );
//           }, body: ListTile(
//               title: Text('31531'),
//               subtitle:
//               const Text('To delete this panel, tap the trash can icon'),
//               trailing: const Icon(Icons.delete),
//               onTap: () {
//                 // setState(() {
//                 //   _data.removeWhere((Item currentItem) => item == currentItem);
//                 // });
//               }))
//         ],
//       )
//     ];
//     // List<ExpansionPanelList> wList = [];
//     // if(tree.isNotEmpty){
//     //   for (var element in tree) {
//     //     // 没有子集
//     //     if(element.children == null || element.children!.isEmpty){
//     //       // wList.add(DropdownMenuItem(
//     //       //   child: Text(element.routeName),
//     //       // ));
//     //     }
//     //     // 有子集
//     //     else{
//     //       List<ExpansionPanel> cList = element.children!.map((AppRouterMenuItem  e) => ExpansionPanel(
//     //           headerBuilder: (BuildContext context, bool isExpanded){
//     //             return ListTile(
//     //               title: Text(e.routeName),
//     //             );
//     //             // return ListTile(child: Text('${e.routeName} 123'),);
//     //           },
//     //           body:  ListTile(title: Text(e.routeName),),
//     //           )
//     //         ).toList();
//     //       wList.add(ExpansionPanelList(children: cList));
//     //     }
//     //   }
//     // }
//     // return wList;
//   }
// }