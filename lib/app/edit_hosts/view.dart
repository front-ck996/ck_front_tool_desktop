// import 'package:ck_front_tool_dart/widget/app_scaffold.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:code_editor/code_editor.dart';
//
// import 'logic.dart';
//
// class EditHostsPage extends StatelessWidget {
//   const EditHostsPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final logic = Get.put(EditHostsLogic());
//
//     return AppScaffold(body: Container(
//       color: Colors.red,
//     ));
//   }
// }

import 'package:flutter/material.dart';



class EditHostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // example of a easier way to write code instead of writing it in a single string
    List<String> contentOfPage1 = [
      "<!DOCTYPE html>",
      "<html lang='fr'>",
      "\t<body>",
      "\t\t<a href='page2.html'>go to page 2</a>",
      "\t</body>",
      "</html>",
    ];

    // The files displayed in the navigation bar of the editor.
    // You are not limited.
    // By default, [name] = "file.${language ?? 'txt'}", [language] = "text" and [code] = "",
    List<FileEditor> files = [
      FileEditor(
        name: "page1.html",
        language: "html",
        code: contentOfPage1.join("\n"), // [code] needs a string
      ),
      // FileEditor(
      //   name: "page2.html",
      //   language: "html",
      //   code: "<a href='page1.html'>go back</a>",
      // ),
      // FileEditor(
      //   name: "style.css",
      //   language: "css",
      //   code: "a { color: red; }",
      // ),
    ];

    // The model used by the CodeEditor widget, you need it in order to control it.
    // But, since 1.0.0, the model is not required inside the CodeEditor Widget.
    EditorModel model = EditorModel(
      files: files, // the files created above
      // you can customize the editor as you want
      styleOptions: EditorModelStyleOptions(
        fontSize: 13,
      ),
    );

    // A custom TextEditingController.
    final myController = TextEditingController(text: 'hello!');

    return Scaffold(
      appBar: AppBar(title: Text("code_editor example")),
      body: SingleChildScrollView( // /!\ important because of the telephone keypad which causes a "RenderFlex overflowed by x pixels on the bottom" error
        // display the CodeEditor widget
        child: CodeEditor(
          model: model, // the model created above, not required since 1.0.0
          edit: true, // can edit the files ? by default true
          disableNavigationbar: true, // hide the navigation bar ? by default false
          onSubmit: (String? language, String? value) {

          }, // when the user confirms changes in one of the files
          textEditingController: myController, // Provide an optional, custom TextEditingController.
        ),
      ),
    );
  }
}