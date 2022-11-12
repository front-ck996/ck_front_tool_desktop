import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:ck_front_tool_dart/widget/app_basic_container.dart';
import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
import 'package:code_editor/code_editor.dart';


import 'package:flutter/material.dart';


class EditHostsPage extends StatelessWidget {
  late String hostData;
  @override
  Widget build(BuildContext context)  {
    return AppBasicContainer(
      future: _getData(),
      builder: (BuildContext context, BoxConstraints constraints,AsyncSnapshot<String> snapshot){
        if( snapshot.connectionState == ConnectionState.done){
            List<FileEditor> files = [
              FileEditor(
                name: "hosts",
                language: "html",
                code: "", // [code] needs a string
              ),
            ];
            EditorModel model = EditorModel(
              files: files,
              styleOptions: EditorModelStyleOptions(
                fontSize: 13,
                editButtonName: '编辑',
                heightOfContainer: constraints.maxHeight,
              ),
            );
          return AppScaffold(body: CodeEditor(
            model: model,
            disableNavigationbar: true, //
          ));
        }
        return Container();
      }
    );
  }
  Future<String> _getData() async{
    var fData =  await LocationFileHost.getHostData();
    return Future.value(fData);
  }
}