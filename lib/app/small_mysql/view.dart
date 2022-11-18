import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/app_basic_container.dart';
import '../../widget/app_scaffold.dart';

import 'logic.dart';

class SmallMysqlPage extends StatelessWidget {
  const SmallMysqlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SmallMysqlLogic());

    return AppScaffold(
        title: "mysql社区版 8.0.23",
        body: AppBasicContainer(
            builder: (BuildContext context,BoxConstraints constraints, AsyncSnapshot snapshot){
              return Container(padding: const EdgeInsets.all(20), child:Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 150,
                        child: Text('mysql'),
                      ),
                      TextButton(onPressed: (){

                      }, child: Text('启动')),
                    ],
                  )
                ],
              ));
            }
        )
    );
  }
}
