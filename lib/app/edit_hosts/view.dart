import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:ck_front_tool_dart/utils/u_color.dart';
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:flutter/material.dart';

class EditHostsPage extends StatelessWidget {
  late String hostData;
  @override
  Widget build(BuildContext context)  {
    return AppBasicContainer(
      future: _getData(),
      builder: (BuildContext context, BoxConstraints constraints,AsyncSnapshot<String> snapshot){
        if( snapshot.connectionState == ConnectionState.done){
          return AppScaffold(body: Container(
            // color: Colors.red,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    controller: TextEditingController.fromValue(TextEditingValue(text: snapshot.data.toString())),
                    decoration: InputDecoration(),
                    // scrollPadding: const EdgeInsets.all(20.0),
                    keyboardType: TextInputType.multiline,
                    maxLines: 99999,
                  ),
                )
              ],
            ),
          ));
        }
        return AppScaffold(body: Container(
          color: UColor.hex('#0000004d'),
          child: Center(child: CircularProgressIndicator(),),
        ));
      }
    );
  }
  Future<String> _getData() async{
    var fData =  await LocationFileHost.getHostData();
    await Future.delayed(Duration(seconds: 5));
    return Future.value(fData);
  }
}