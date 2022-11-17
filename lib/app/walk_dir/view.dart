import 'package:ck_front_tool_dart/grpc/core/walk_disk.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grpc/grpc.dart';
import '../../widget/app_basic_container.dart';
import '../../widget/app_scaffold.dart';
import 'package:ck_front_tool_dart/grpc/handle.dart';
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
                    ResponseStream  res =  UGrpcHandle.getHandle().walkDisk(RequestWalkDisk(disk: "c:"));
                    res.listen((value) {
                      logic.f.value = (value as ResponseWalkDisk).file;
                    });
                  }, child: Icon(Icons.add_circle),),
                  SizedBox(height: 10,),
                  Obx(() => Text(logic.f.value))
                ],
              ));
            }
        )
    );
  }
}
