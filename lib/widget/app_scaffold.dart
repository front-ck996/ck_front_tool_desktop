import 'package:ck_front_tool_dart/app_router/app_route_menu.dart';
import 'package:ck_front_tool_dart/utils/u_color.dart';
import 'package:ck_front_tool_dart/widget/app_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppScaffold extends StatelessWidget {
  final Widget body;

  final appLogic = Get.put(AppLogic());
  AppScaffold({Key? key, required this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: appLogic.stateKey,
        appBar: AppBar(title: Obx( () => Text(appLogic.appTitle.value)),),
        drawer: Drawer(
          child: _fixedDrawer(),
        ),
        body: _body(),
    );
  }
  Widget _fixedDrawer(){
   return Column(
     children: [
        const SizedBox(height: 20,),
        Container(
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
              // Center(child: Icon(Icons.circle_outlined, size: 95,),),
            ],
          ) ,
        ),
        const SizedBox(height: 20,),
        const AppRouteMenu(),
     ],
   );
  }
  Widget _body(){
    return body;
  }
}
