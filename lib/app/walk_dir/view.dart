
import 'package:ck_front_tool_dart/utils/open_dir_resources.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../grpc/core/other/other.pb.dart';
import '../../widget/app_basic_container.dart';
import '../../widget/app_scaffold.dart';

import 'package:ck_front_tool_dart/grpc/handle.dart';
import 'logic.dart';


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
                  FloatingActionButton(onPressed: () async {
                    ResponseWalkDisk result =  await UGrpcHandle.getHandle().walkDisk(RequestWalkDisk(disk: "c:"));
                    logic.f.value = result.file;
                  }, child: Icon(Icons.add_circle),),
                  SizedBox(height: 10,),
                  Obx(() => Text(logic.f.value)),
                  Obx(() => Text(logic.process.value)),
                  Expanded(child: Obx((){
                    return ListView.builder(
                      itemCount: logic.list.value.length,
                      itemBuilder: (BuildContext context, int index){
                        WalkDiskListData info = logic.list[index];
                        if(index+1 >= logic.list.length && !logic.loading){
                          logic.onLoading();
                        }
                        return Container(padding: EdgeInsets.only(top: 5, bottom: 5),height: 35,child: Row(
                          children: [
                            Expanded(child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                SelectableText(info.dir)
                              ],
                            )),

                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              child:  Text(info.sizeFormat),
                            ),
                            ElevatedButton(onPressed: (){
                              openDirResources(info.dir);
                            }, child: Text('本地打开')),
                            const SizedBox(width: 10,),
                            ElevatedButton(onPressed: (){
                              logic.link = info.dir;
                              logic.onRefresh();
                            }, child: Text('只看该目录')),
                            const SizedBox(width: 10,),
                            ElevatedButton(onPressed: (){
                              logic.link = '';
                              logic.onRefresh();
                            }, child: Text('全部')),
                          ],
                        ));


                      }
                    );
                  }))
                ],
              ));
            }
        )
    );
  }
}
