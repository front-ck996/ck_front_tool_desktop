import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SmallMysqlPage extends StatelessWidget {
  const SmallMysqlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SmallMysqlLogic());

    return Container();
  }
}
