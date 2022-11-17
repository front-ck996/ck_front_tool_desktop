import 'dart:convert';

import 'package:ck_front_tool_dart/app/mock_and_watch_api/logic.dart';
import 'package:ck_front_tool_dart/model/model_mock.dart';
import 'package:ck_front_tool_dart/utils/u_store.dart';
import 'package:ck_front_tool_dart/utils/location_file_host.dart';
import 'package:get/get.dart';

class MockAndWatchApiPageAddLogic extends GetxController {
  submit(ModelMock data) async {
    List<ModelMock> l =  [];
    try{
      final list  = UStore.get("mock_list");
      list.forEach((element){
        l.add(element);
      });
    }catch(e){}
    l.add(data);
    await UStore.addOrUpdate("mock_list", l);
    final mockLogic =  Get.find<MockAndWatchApiLogic>();
    mockLogic.loadMockConfigList();
    updateHosts();
  }

  updateHosts() async {
    final mockLogic =  Get.find<MockAndWatchApiLogic>();
    var content = mockLogic.mockList.map((e) => '127.0.0.1 ${e.firstDomain}.ckfront.dev').toList().join('\n');
    await LocationFileHost.updateTag("CkFrontMockList", content);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
