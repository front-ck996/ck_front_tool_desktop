import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import 'package:ck_front_tool_dart/app_router/app_route_menu.dart';
import 'package:ck_front_tool_dart/utils/u_color.dart';
import 'package:ck_front_tool_dart/app_router/app_router.dart';


class AppScaffold extends StatefulWidget {
  final Widget body;
  final String title;

  const AppScaffold({Key? key,required this.body, required this.title}) : super(key: key);

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  GlobalKey<ScaffoldState> stateKey = GlobalKey<ScaffoldState>();
  List<Widget> icons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    renderLeading();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
          return Scaffold(
        key: stateKey,
        appBar: AppBar(
          title: Text(widget.title),
          leading: Row( children: icons,),
          leadingWidth: icons.length * 50,
        ),
        drawer: Drawer(
          child: _fixedDrawer(),
        ),
        body: _body(),
      );
  }

  renderLeading(){
    icons = [];
    icons.add(GestureDetector(
      onTap: (){
        stateKey.currentState!.openDrawer();
      },
      child: const SizedBox( width: 50, child: Icon(Icons.menu_open_outlined),),
    ));
    // print(NavigationHistoryObserver().history);
    if (NavigationHistoryObserver().history.length > 1){
      icons.add(GestureDetector(
        onTap: (){
          Get.back();
        },
        child: const SizedBox( width: 50, child: Icon(Icons.arrow_back),),
      ));
    }
    if (Get.currentRoute != AppRouter.pageHome){
      icons.add(GestureDetector(
        onTap: (){
          Get.offAndToNamed(AppRouter.pageHome,);
        },
        child: const SizedBox( width: 50, child: Icon(Icons.home_outlined),),
      ));
    }
  }
  Widget _fixedDrawer(){
   return Column(
     children: [
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            Get.offAndToNamed(AppRouter.pageHome);
          },
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Stack(
              children:  [
                Container(
                  alignment: Alignment.center,
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                      border: Border.all(color: UColor.hex('#42a5f5ff'),width: 2),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Icon(Icons.ac_unit_sharp,size: 65, color: UColor.hex('#42a5f5ff'),),
                ),
              ],
            ) ,
          ),
        ),
        const SizedBox(height: 20,),
       AppRouteMenu(onPush: (e){
         stateKey.currentState!.openEndDrawer();
       },),
     ],
   );
  }

  Widget _body(){
    return widget.body;
  }
}