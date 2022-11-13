import 'package:flutter/material.dart';

import 'package:ck_front_tool_dart/utils/loading_fit_fill.dart';
import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:ck_front_tool_dart/utils/u_toast.dart';
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';

class EditHostsPage extends StatelessWidget {
  late String hostData;

  EditHostsPage({super.key});
  @override
  Widget build(BuildContext context)  {
    return AppBasicContainer(
      future: _getData(),
      builder: (BuildContext context, BoxConstraints constraints,AsyncSnapshot<String> snapshot){
        if( snapshot.connectionState == ConnectionState.done){
          hostData = snapshot.data.toString();
          return AppScaffold(title: '修改本地hosts文件',body: Container(
            // color: Colors.red,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: TextEditingController.fromValue(TextEditingValue(text: snapshot.data.toString())),
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.multiline,
                    onChanged: (value){
                      hostData = value;
                    },
                    maxLines: 99999,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    children: [
                      ElevatedButton(
                        child: const Text('提交'),
                        onPressed: (){
                          if(LocationFileHost.save(hostData)){
                            UToast.info('保存成功');
                          }else{
                            UToast.error('保存失败');
                          }
                        },
                      )
                    ],
                  )

                )
              ],
            ),
          ));
        }
        return AppScaffold(title: 'loading' ,body: const LoadingFitFill());
      }
    );
  }
  Future<String> _getData() async{
    var fData =  await LocationFileHost.getHostData();
    // await Future.delayed(const Duration(seconds: 5));
    return Future.value(fData);
  }
}