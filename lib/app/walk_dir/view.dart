import 'dart:ffi';
import 'dart:math';

// import 'package:ck_front_tool_dart/ffi_binary/go_script.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/app_basic_container.dart';
import '../../widget/app_scaffold.dart';
import 'package:ffi/ffi.dart' as ffi;
import 'logic.dart';
// typedef callBack  Pointer<Void> NativeFunction(Pointer<Char> log);
typedef VoidCallback =  void Function(String log);

class WalkDirPage extends StatelessWidget {
  const WalkDirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(WalkDirLogic());
    return AppScaffold(
        title: "读取整个盘下面的文件",
        body: AppBasicContainer(
            builder: (BuildContext context,BoxConstraints constraints, AsyncSnapshot snapshot){
              return Container(padding: const EdgeInsets.all(20), child:Column(
                children: [
                  FloatingActionButton(onPressed: (){
                    // GoScript.goScriptHandle.WalkDisk("c:")
                    // Callback c ;
                    // GoScript.walkDisk("c:", (Pointer<Char> log){
                    //
                    // });
                  }, child: Icon(Icons.add_circle),)
                ],
              ));
            }
        )
    );
  }
}
