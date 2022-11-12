import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class EditHostsPage extends StatelessWidget {
  const EditHostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(EditHostsLogic());

    return Container();
  }
}
